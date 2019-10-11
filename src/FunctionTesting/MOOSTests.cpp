/*
 * A simple example showing how to use a comms client
 */
#include "MOOS/libMOOS/Comms/MOOSAsyncCommClient.h"
#include "MOOS/libMOOS/Utils/CommandLineParser.h"
#include "MOOS/libMOOS/Utils/ConsoleColours.h"
#include "MOOS/libMOOS/Utils/ThreadPrint.h"
#include <iostream>
#include <thread>
#include "../IMU/clogger.h"

#include "MOOSTests.h"


MOOS::ThreadPrint gPrinter(std::cout);

bool OnConnect(void * pParam){
	CMOOSCommClient* pC =  reinterpret_cast<CMOOSCommClient*> (pParam);
	pC->Register("IMU",0.0);
	pC->Register("GPS",0.0);

	return true;
}

bool OnMail(void *pParam){
	CMOOSCommClient* pC = reinterpret_cast<CMOOSCommClient*>(pParam);

	MOOSMSG_LIST M; //get the mail
	pC->Fetch(M);

	MOOSMSG_LIST::iterator q; //process it
	for(q=M.begin();q!=M.end();q++){
		gPrinter.SimplyPrintTimeAndMessage("mail:"+q->GetSource(), MOOS::ThreadPrint::GREEN);
	}
	return true;
}

void IMUNotify(char* data){
	
	MOOS::MOOSAsyncCommClient Comms;
	Comms.Run("localhost",9000,"IMU_test");
	for(int i = 0; i < 10;i++){
	
		MOOSPause(20);

		Comms.Notify("IMU",&data,sizeof(data));
	
	} 

}

void GPSNotify(char* data){
	
	MOOS::MOOSAsyncCommClient Comms;
	Comms.Run("localhost",9000,"GPS_test");
	for(int i = 0; i <5;i++){
	
		MOOSPause(40);

		Comms.Notify("GPS",&data,sizeof(data));
	
	} 

}


bool IMU(CMOOSMsg & M, void * TheParameterYouSaidtoPassOnToCallback){

	IMU_data received;
	gPrinter.SimplyPrintTimeAndMessage("call back for IMU", MOOS::ThreadPrint::CYAN);
	
	unsigned char data[M.GetBinaryDataSize()];
	memcpy(data,M.GetBinaryData(),M.GetBinaryDataSize());
	
	memcpy(&received, data,  sizeof(received));
	std::cout<<"Acc"<<std::endl;

	std::cout<<received.acc_x<<std::endl;
	std::cout<<received.acc_y<<std::endl;
	std::cout<<received.acc_z<<std::endl;

	std::cout<<"Gyro"<<std::endl;

	std::cout<<received.gyro_x<<std::endl;
	std::cout<<received.gyro_y<<std::endl;
	std::cout<<received.gyro_z<<std::endl;
	std::cout<<std::endl;	

	return true;
}

bool GPS(CMOOSMsg & M, void * TheParameterYouSaidtoPassOnToCallback){

	GPS_data received;
	gPrinter.SimplyPrintTimeAndMessage("call back for GPS", MOOS::ThreadPrint::CYAN);
	
	unsigned char data[M.GetBinaryDataSize()];
	memcpy(data,M.GetBinaryData(),M.GetBinaryDataSize());
	
	memcpy(&received, data,  sizeof(received));
	std::cout<<"GPS"<<std::endl;

	std::cout<<received.lat<<std::endl;
	std::cout<<received.lon<<std::endl;

	std::cout<<std::endl;	

	return true;
}
int main(int argc, char * argv[]){

	//understand the command line
	MOOS::CommandLineParser P(argc,argv);

	std::string db_host="localhost";
	P.GetVariable("--moos_host",db_host);

	int db_port=9000;
	P.GetVariable("--moos_port",db_port);

	std::string my_name ="ReceiveApp";
	P.GetVariable("--moos_name",my_name);

	//configure the comms
	MOOS::MOOSAsyncCommClient Comms;
	Comms.SetOnMailCallBack(OnMail,&Comms);
	Comms.SetOnConnectCallBack(OnConnect,&Comms);

	//here we add per message callbacks
	//first parameter is the channel nick-name, then the function
	//to call, then a parameter we want passed when callback is
	//invoked
	Comms.AddMessageCallBack("callback_IMU","IMU",IMU,NULL);
	Comms.AddMessageCallBack("callback_GPS","GPS",GPS,NULL);

	//start the comms running
	Comms.Run(db_host,db_port,my_name);

	//for ever loop waiting to receive data

	IMU_data testIMU;
	testIMU.acc_x = 10;
	testIMU.acc_y = 10;
	testIMU.acc_z = 10;
	testIMU.gyro_x = 10;
	testIMU.gyro_y = 10;
	testIMU.gyro_z = 10;

	char data1[sizeof(testIMU)];
	memcpy(data1,&testIMU,sizeof(testIMU));

	GPS_data testGPS;
	testGPS.lat = 31.135671;
	testGPS.lon = 15.456789;

	char data2[sizeof(testGPS)];
	memcpy(data2,&testGPS,sizeof(testGPS));

	for(;;){
		//Loop forever waiting for the messages
		Comms.Notify("IMU",&data1,sizeof(data1));
		MOOSPause(20);
		Comms.Notify("GPS",&data2,sizeof(data2));
		MOOSPause(20);
	}

	return 0;
}

/*
 * A simple example showing how to use a comms client
 */
#include "MOOS/libMOOS/Comms/MOOSAsyncCommClient.h"
#include "MOOS/libMOOS/Utils/CommandLineParser.h"
#include "MOOS/libMOOS/Utils/ConsoleColours.h"
#include "MOOS/libMOOS/Utils/ThreadPrint.h"
#include <iostream>
#include "../IMU/clogger.h"

#include "RecApp.h"


MOOS::ThreadPrint gPrinter(std::cout);

bool OnConnect(void * pParam){
	CMOOSCommClient* pC =  reinterpret_cast<CMOOSCommClient*> (pParam);
	pC->Register("IMU",0.0);

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

bool funcX(CMOOSMsg & M, void * TheParameterYouSaidtoPassOnToCallback)
{

	IMU_data received;
	gPrinter.SimplyPrintTimeAndMessage("call back for IMU", MOOS::ThreadPrint::CYAN);
	
	char data[M.GetBinaryDataSize()];
	memcpy(data,M.GetBinaryData(),M.GetBinaryDataSize());
	std::cout<<"Received"<<std::endl;
	
	memcpy(&received, data,  sizeof(received));
	std::cout<<received.acc_x<<std::endl;
	
	//Debugging Lines	
	std::cout<<"Acc"<<std::endl;

	std::cout<<received.acc_x<<std::endl;
	std::cout<<received.acc_y<<std::endl;
	std::cout<<received.acc_z<<std::endl;

	std::cout<<"Gyro"<<std::endl;

	std::cout<<received.gyro_x<<std::endl;
	std::cout<<received.gyro_y<<std::endl;
	std::cout<<received.gyro_z<<std::endl;
	std::cout<<std::endl;//	

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
	Comms.AddMessageCallBack("callback_X","IMU",funcX,NULL);

	//start the comms running
	Comms.Run(db_host,db_port,my_name);

	//for ever loop waiting to receive data

	for(;;){

		MOOSPause(5000);

		//Comms.Notify("IMU",&data,sizeof(data));

	}
	return 0;
}

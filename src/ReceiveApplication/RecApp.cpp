/*
 * A simple example showing how to use a comms client
 */

#include "RecApp.h"


MOOS::ThreadPrint gPrinter(std::cout);

//ID the timestamp of the 1st Post this will be start(time Zero)
bool start = false;
double timestampZero = 0.0;

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
	
	for(;;){

	//for ever loop waiting to receive data

	}
	return 0;
}

bool IMU(CMOOSMsg & M, void * pParam){
	
	if(checkStorage()){
		std::cout<<"IMU caused termination"<<std::endl;
		exit(1);
	}

	double timestamp;
	if(start == false){
		start = true;
		timestampZero = M.GetTime();
		timestamp = M.GetTime() - timestampZero;
	}
	else{

		timestamp = M.GetTime() - timestampZero;
	}
	IMU_data received;

	gPrinter.SimplyPrintTimeAndMessage("IMU Data", MOOS::ThreadPrint::CYAN);
	
	//Extract all the IMU data into IMU_data struct
	char data[M.GetBinaryDataSize()];//This can be used to transmit raw datato the Aruino as a byte array
	memcpy(data,M.GetBinaryData(),M.GetBinaryDataSize());
	memcpy(&received, data,  sizeof(received));

	std::string filename = "/home/pi/moos-ivp/mymoos/Logs/IMU/";
	std::thread thread = std::thread(logIMUFunc,filename,&received,timestamp);
	thread.join();	
	/*Debugging Lines
		
	std::cout<<"Received at "<<timestamp<<std::endl;
	std::cout<<"Received"<<std::endl;
	std::cout<<"Acc"<<std::endl;

	std::cout<<received.acc_x<<std::endl;
	std::cout<<received.acc_y<<std::endl;
	std::cout<<received.acc_z<<std::endl;

	std::cout<<"Gyro"<<std::endl;

	std::cout<<received.gyro_x<<std::endl;
	std::cout<<received.gyro_y<<std::endl;
	std::cout<<received.gyro_z<<std::endl;
	std::cout<<std::endl;*/	

	return true;
}

void logIMUFunc(std::string loglocation, IMU_data* data,double time){

	//Variabble format for clogger 
	rawData_t dataA;
	rawData_t dataG;
	sensorValue_t valueA;
	sensorValue_t valueG;
	//Reformat the IMU_data for logging Purposes
	dataA.x = data->accR_x;
	dataA.y = data->accR_y;
	dataA.z = data->accR_z;
	dataG.x = data->gyroR_x;
	dataG.y = data->gyroR_y;
	dataG.z = data->gyroR_z;

	valueA.x = data->accP_x;
	valueA.y = data->accP_y;
	valueA.z = data->accP_z;
	valueG.x = data->gyroP_x;
	valueG.y = data->gyroP_y;
	valueG.z = data->gyroP_z;

	std::string filename1 = loglocation+"Accel/sample_"+std::to_string(time);
	std::string filename2 = loglocation+"Gyro/sample_"+std::to_string(time);
	
	Logger logger;
	logger.clogger(filename1,&dataA,&valueA);
	logger.clogger(filename2,&dataG,&valueG);
	compress(filename1);
	compress(filename2);

}

bool GPS(CMOOSMsg & M, void * pParam){

	if(checkStorage()){
		std::cout<<"GPS caused termination"<<std::endl;
		exit(1);
	}
	double timestamp;
	if(start == false){
		start = true;
		timestampZero = M.GetTime();
		timestamp = M.GetTime() - timestampZero;
	}
	else{

		timestamp = M.GetTime() - timestampZero;
	}
	GPS_data received;

	gPrinter.SimplyPrintTimeAndMessage("GPS Data", MOOS::ThreadPrint::CYAN);
	
	//Extract all the IMU data into IMU_data struct
	char data[M.GetBinaryDataSize()];//This can be used to transmit raw datato the Aruino as a byte array
	memcpy(data,M.GetBinaryData(),M.GetBinaryDataSize());
	memcpy(&received, data,  sizeof(received));

	std::string filename = "/home/pi/moos-ivp/mymoos/Logs/";
	std::thread thread = std::thread(logGPSFunc,filename,&received,timestamp);
	thread.join();	
	
	return true;
}

void logGPSFunc(std::string loglocation, GPS_data* data,double time){

	std::string filename = loglocation+"GPS/sample_"+std::to_string(time);
	GPSLogger logger;
	logger.clogger(filename,data);
	compress(filename);
}

bool checkStorage(){

	struct statvfs fiData;
	std::string filename;
	filename = "/home/pi/moos-ivp/mymoos/Logs";
	int n = filename.length();
	char file_array[n+1];
	strcpy(file_array,filename.c_str());

	if(statvfs(file_array,&fiData) < 0){
		std::cout<<"Failed"<<std::endl;
		return false;
	}else{
		int bfree =fiData.f_bfree;
		if(bfree < 1000){
			std::cout<<bfree<<std::endl;	
			return true;
		}else{
			std::cout<<bfree<<std::endl;
			return false;		
		}
		//std::cout<<"Disk: "<<filename<<std::endl;
		//std::cout<<"Free blocks: "<<bfree<<std::endl;
		//return true;
	}

}

void GPSLogger::clogger(std::string filename,GPS_data* data){
	
	std::ofstream logfile;
	logfile.open(filename+".txt");
	logfile<<"GPS Data"<<std::endl;
	logfile<<"Lat: "<<data->lat<<std::endl;
	logfile<<"Long: "<<data->lon<<std::endl;
	logfile.close();
}





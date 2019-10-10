/*
 * A simple example showing how to use a comms client
 */

#include "PostApp.h"

MOOS::ThreadPrint gPrinter(std::cout);

bool OnConnect(void * pParam){
	CMOOSCommClient* pC =  reinterpret_cast<CMOOSCommClient*> (pParam);
	pC->Register("IMU",0.0);
	pC->Register("GPS",0.0);

	return true;
}


int main(int argc, char * argv[]){

	//understand the command line
	MOOS::CommandLineParser P(argc,argv);

	std::string db_host="localhost";
	P.GetVariable("--moos_host",db_host);

	int db_port=9000;
	P.GetVariable("--moos_port",db_port);

	std::string my_name ="PostApp";
	P.GetVariable("--moos_name",my_name);
	
	//IMU variable initialisation
	int acc = 2;
	int gyro = 2000;
	int freqIMU = 50;
	int freqGPS = 25;

	int variablesIMU[] = {db_port,freqIMU,acc,gyro};
	std::vector<std::string> db_names{db_host,my_name};

	gpioCfgSetInternals(1<<10);
	gpioInitialise();
	std::cout<<"PostApplication started"<<std::endl;

	//IMU thread for sampling the device
	std::thread IMUthread = std::thread(sampleIMU,&db_names,(int*)&variablesIMU);
	IMUthread.detach();

	//GPS thread to simulate the GPS's behaviour
	std::thread GPSthread = std::thread(simGPS,&db_names,freqGPS,db_port);
	GPSthread.detach();

	for(;;){
		//Loop forever
	}

	gpioTerminate();
	return 0;
}

void sampleIMU(std::vector<std::string>* db_names,int* variables){

	int time = ((float)1/variables[1])*1000;
	std::cout<<"Time IMU:"<<time<<std::endl;
	//std::cout<<time<<std::endl;
	IMU_data extracted;

	//Configure Comms
	MOOS::MOOSAsyncCommClient Comms;

	//start the comms running
	Comms.Run(db_names->at(0),variables[0],db_names->at(1)+"-IMU");

	rawData_t dataA;
	rawData_t dataG;

	sensorValue_t processedA;
	sensorValue_t processedG;
	for(;;){
		
		accel_function(variables[2],&dataA,&processedA);
		gyro_function(variables[3],&dataG,&processedG);
		
		extracted.accR_x = dataA.x;
		extracted.accR_y = dataA.y;
		extracted.accR_z = dataA.z;

		extracted.accP_x = processedA.x;
		extracted.accP_y = processedA.y;
		extracted.accP_z = processedA.z;
	
		extracted.gyroR_x = dataG.x;
		extracted.gyroR_y = dataG.y;
		extracted.gyroR_z = dataG.z;

		extracted.gyroP_x = processedG.x;
		extracted.gyroP_y = processedG.y;
		extracted.gyroP_z = processedG.z;

		char data[sizeof(extracted)];
		memcpy(data, &extracted, sizeof(extracted));
		//Transmit data as a binary Lump
		Comms.Notify("IMU",&data,sizeof(data));

		/*Debugging
		std::cout<<"Acc"<<std::endl;

		std::cout<<extracted.acc_x<<std::endl;
		std::cout<<extracted.acc_y<<std::endl;
		std::cout<<extracted.acc_z<<std::endl;

		std::cout<<"Gyro"<<std::endl;

		std::cout<<extracted.gyro_x<<std::endl;
		std::cout<<extracted.gyro_y<<std::endl;
		std::cout<<extracted.gyro_z<<std::endl;
		std::cout<<std::endl;//*/
	
		MOOSPause(time);
	
	}

}

void simGPS(std::vector<std::string>* db_names,int freq,int port){

	int time = ((float)1/freq)*1000;
	std::cout<<"Time GPS: "<<time<<std::endl;	
	//Configure Comms
	MOOS::MOOSAsyncCommClient Comms;

	//start the comms running
	Comms.Run(db_names->at(0),port,db_names->at(1)+"-GPS");
	
	GPS_data extracted;

	for(;;){
		//Menizes Location
		float lat = -33.958629;
		float lon = 18.460086;
		extracted.lat = lat;
		extracted.lon = lon;
		//Adding a delay simulate processing
		MOOSPause(500);
			
		char data[sizeof(extracted)];
		memcpy(data, &extracted, sizeof(extracted));
		//Transmit data as a Binary Lump
		Comms.Notify("GPS",&data,sizeof(data));

		MOOSPause(time);
	}
}


/*
 * A simple example showing how to use a comms client
 */

#include <vector>
#include "PostApp.h"

MOOS::ThreadPrint gPrinter(std::cout);

bool OnConnect(void * pParam){
	CMOOSCommClient* pC =  reinterpret_cast<CMOOSCommClient*> (pParam);
	pC->Register("IMU",0.0);
	//pC->Register("Y",0.0);
	//pC->Register("Z",0.0);

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
	rawData_t accel_raw;
	rawData_t gyro_raw;

	sensorValue_t accel_values;
	sensorValue_t gyro_values;
	int freq = 50;

	int variables[] = {db_port,freq,acc,gyro};
	std::vector<std::string> db_names{db_host,my_name};

	gpioCfgSetInternals(1<<10);
	gpioInitialise();
	std::cout<<"Program started"<<std::endl;
	sampleIMU(&db_names,(int*)&variables,&accel_raw,&accel_values,&gyro_raw,&gyro_values);
	
	/*
	for(;;){
		MOOSPause(10000);
		Comms.Notify("Rows",rows); //for callback_X
		
	}*/

	gpioTerminate();
	return 0;
}

void sampleIMU(std::vector<std::string>* db_names,int* variables,rawData_t* dataA,sensorValue_t* processedA,rawData_t* dataG,sensorValue_t* processedG){

	int time = ((float)1/variables[1])*1000;
	std::cout<<time<<std::endl;
	IMU_data extracted;

	//Configure Comms
	MOOS::MOOSAsyncCommClient Comms;

	std::string host = db_names->at(0);
	std::string name = db_names->at(1);

	//start the comms running
	Comms.Run(host,variables[0],name);

	for(;;){
		
		accel_function(variables[2],dataA,processedA);
		gyro_function(variables[3],dataG,processedG);
		
		extracted.acc_x = processedA->x;
		extracted.acc_y = processedA->y;
		extracted.acc_z = processedA->z;

		extracted.gyro_x = processedG->x;
		extracted.gyro_y = processedG->y;
		extracted.gyro_z = processedG->z;

		char data[sizeof(extracted)];
		memcpy(data, &extracted, sizeof(extracted));

		Comms.Notify("IMU",data);

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
	
		MOOSPause(1000);
	
	}

}

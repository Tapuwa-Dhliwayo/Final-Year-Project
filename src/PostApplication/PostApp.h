//Header file for the PostApp

#include "MOOS/libMOOS/Comms/MOOSAsyncCommClient.h"
#include "MOOS/libMOOS/Utils/CommandLineParser.h"
#include "MOOS/libMOOS/Utils/ConsoleColours.h"
#include "MOOS/libMOOS/Utils/ThreadPrint.h"

#include <iostream>
#include <thread>
#include <pigpio.h>
#include <vector>

#include "../IMU/clogger.h"

//IMU struct with all the data
struct IMU_data{

	float accP_x;
	float accP_y;
	float accP_z;

	int16_t accR_x;
	int16_t accR_y;
	int16_t accR_z;

	float gyroP_x;
	float gyroP_y;
	float gyroP_z;
	
	int16_t gyroR_x;
	int16_t gyroR_y;
	int16_t gyroR_z;
};
struct GPS_data{

	double lat;
	double lon;

};


//Function Declarations

void sampleIMU(std::vector<std::string>* db_names,int* variables);

void simGPS(std::vector<std::string>* db_names,int freq,int port);

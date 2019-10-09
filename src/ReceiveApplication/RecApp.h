//Header file for Receive Application
//Include files
#include "MOOS/libMOOS/Comms/MOOSAsyncCommClient.h"
#include "MOOS/libMOOS/Utils/CommandLineParser.h"
#include "MOOS/libMOOS/Utils/ConsoleColours.h"
#include "MOOS/libMOOS/Utils/ThreadPrint.h"
#include <iostream>
#include <thread>
#include <sys/statvfs.h>
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

//Function Declarations
void logIMUFunc(std::string loglocation, IMU_data* data, double time);
bool IMU(CMOOSMsg &M, void* pParam);
bool checkStorage();



//Header file for Receive Application
//Include files
#include "MOOS/libMOOS/Comms/MOOSAsyncCommClient.h"
#include "MOOS/libMOOS/Utils/CommandLineParser.h"
#include "MOOS/libMOOS/Utils/ConsoleColours.h"
#include "MOOS/libMOOS/Utils/ThreadPrint.h"
#include <iostream>
#include <thread>
#include <mutex>
#include <sys/statvfs.h>
#include "../IMU/clogger.h"
#include "../Arduino/ARD.h"
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
//GPS struct with all the data
struct GPS_data{

	double lat;
	double lon;

};

class GPSLogger
{
public:
	void clogger(std::string filename,GPS_data* data);

};


//Function Declarations
bool IMU(CMOOSMsg &M, void* pParam);
void logIMUFunc(std::string loglocation, IMU_data* data, double time);
bool GPS(CMOOSMsg & M, void * pParam);
void logGPSFunc(std::string loglocation, GPS_data* data,double time);
bool checkStorage();



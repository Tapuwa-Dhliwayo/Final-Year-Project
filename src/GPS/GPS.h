
#include "MOOS/libMOOS/Comms/MOOSAsyncCommClient.h"
#include <stdio.h>
#include <unistd.h>
#include <cstring>
#include <stdlib.h>
#include <iostream>
#include <math.h>
#include <gps.h>

struct GPS_data{

	float lat;
	float lon;

};
float* gps();
void gpsFix(std::vector<std::string>* db_names,int port);

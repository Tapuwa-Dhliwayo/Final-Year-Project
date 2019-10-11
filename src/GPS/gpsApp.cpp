//Simple C++ to read GPS data

#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>
#include <iostream>
#include <math.h>
#include <gps.h>

int main(){

	int rc;
	struct timeval tv;

	struct gps_data_t gps_data;
	if((rc = gps_open("localhost",


}

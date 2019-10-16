//Simple C++ to read GPS data

#include "GPS.h"

float* gps(){

	int c;
	static float coord[2];
	//coord[0] = nullptr;

	struct gps_data_t gps_data;
	if ((c = gps_open("localhost", "2947", &gps_data)) == -1) {
	    printf("code: %d, reason: %s\n", c, gps_errstr(c));
	    return coord;
	}
	gps_stream(&gps_data, WATCH_ENABLE | WATCH_JSON, NULL);

	
	// wait for 2 seconds to receive data */
	if (gps_waiting (&gps_data, 10000)) {
		//Read data
		if ((c = gps_read(&gps_data)) == -1) {
			printf("error occured reading gps data. code: %d, reason: %s\n", c, gps_errstr(c));
		} else {
		    /* Display data from the GPS receiver. */
			if ((gps_data.status == STATUS_FIX) && (gps_data.fix.mode == MODE_2D || gps_data.fix.mode == MODE_3D) && !isnan(gps_data.fix.latitude) && !isnan(gps_data.fix.longitude)) {
			    //Return the lattude and longitude
			    
				coord[0] = gps_data.fix.latitude;
				coord[1] = gps_data.fix.longitude;
			    
		    } else {
				//printf("no GPS data available\n");
				
		    }
		}
	}
	
	//After readig close
	gps_stream(&gps_data, WATCH_DISABLE, NULL);
	gps_close (&gps_data);

	return coord;

}
void gpsFix(std::vector<std::string>* db_names,int port){

	//Configure Comms
	MOOS::MOOSAsyncCommClient Comms;

	//start the comms running
	Comms.Run(db_names->at(0),port,db_names->at(1)+"-GPS");
	GPS_data extracted;
	int rc;

	struct gps_data_t gps_data;
	if ((rc = gps_open("localhost", "2947", &gps_data)) == -1) {
	    printf("code: %d, reason: %s\n", rc, gps_errstr(rc));
	}
	gps_stream(&gps_data, WATCH_ENABLE | WATCH_JSON, NULL);

	while (1) {
	    /* wait for 2 seconds to receive data */
	    if (gps_waiting (&gps_data, 2000000)) {
		/* read data */
		if ((rc = gps_read(&gps_data)) == -1) {
		    printf("error occured reading gps data. code: %d, reason: %s\n", rc, gps_errstr(rc));
		} else {
		    /* Display data from the GPS receiver. */
		    if ((gps_data.status == STATUS_FIX) && 
			(gps_data.fix.mode == MODE_2D || gps_data.fix.mode == MODE_3D) &&
			!isnan(gps_data.fix.latitude) && 
			!isnan(gps_data.fix.longitude)) {
			    //Transmit GPS data if there is a fix 
			extracted.lat = gps_data.fix.latitude;
			extracted.lon = gps_data.fix.longitude;
			char data[sizeof(extracted)];
			memcpy(data, &extracted, sizeof(extracted));
			//Transmit data as a Binary Lump
			Comms.Notify("GPS",&data,sizeof(data));
			     
		    } else {
			printf("no GPS data available\n");
		    }
		}
	    }

	    sleep(3);
	}

	//Turn off stream when complete
	gps_stream(&gps_data, WATCH_DISABLE, NULL);
	gps_close (&gps_data);
}


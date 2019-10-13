  
//Simple C++ to read and write to the Arduino

#include "ARD.h"

int ardsend(std::string* data){

	int i=0;
	int cport_nr=24; /* /dev/ttyACM0 */
  	int bdrate=115200; /* 115200 baud */
	char msg[data->size() +1];
	strcpy(msg, data->c_str());
  	char mode[]={'8','N','1',0}; // 8 data bits, no parity, 1 stop bit
  	unsigned char str_recv[BUF_SIZE]; // recv data buffer
  
  	if(RS232_OpenComport(cport_nr, bdrate, mode,0)) {

		printf("Can not open comport\n");
		return 0;
  	}

  	usleep(2000000);  // waits 2000ms for stable condition 
    	RS232_cputs(cport_nr, msg); // sends string on serial
	usleep(1000000); //Delay for a second
	printf("Sent to Arduino: '%s'\n", &data);
	usleep(1000000); /* waits for reply 2000ms */
	int n = RS232_PollComport(cport_nr, str_recv, (int)BUF_SIZE); 
	if(n > 0){

		str_recv[n] = 0;   // always put a "null" at the end of a string! 
      		printf("Received %i bytes: '%s'\n", n, (char *)str_recv);
	}
	
	RS232_CloseComport(cport_nr);
 
  	return 1;
}

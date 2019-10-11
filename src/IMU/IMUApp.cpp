#include <iostream>
#include <errno.h>
#include <unistd.h>
#include <math.h>
#include "clogger.h"
#include <pigpio.h>

using namespace std;

int main(){

	int acc = 2;
	int gyro = 2000;
	rawData_t dataA;
	rawData_t dataG;
	sensorValue_t proA;
	sensorValue_t proG;
	/*
	cout << "Enter Sensitivities:" << endl;
	cout << "Accel(2,4,8) and Gyro(250,500,1000,2000)" << endl;
	cin >> acc >> gyro;
	*/
	cout <<"Accel Sensitivity: " << acc << " Gyro Sensitivity: " << gyro << endl;
	
	gpioCfgSetInternals(1<<10);
	gpioInitialise();

	accel_function(acc,&dataA,&proA);
	gyro_function(gyro,&dataG,&proG);

	gpioTerminate();
	
	//Mathematical testing of readings
	float Rx = proA.x;
	float Ry = proA.y;
	float Rz = proA.z;
	double R = sqrt(pow(Rx,2)+pow(Ry,2)+pow(Rz,2));
	double cosX = Rx/R;	
	double cosY = Ry/R;
	double cosZ = Rz/R;

	double check = sqrt(pow(cosX,2)+pow(cosY,2)+pow(cosZ,2));
	cout<<"Check Accel value(if 1 value is correct) is : "<<check<<endl;

	/*
	cout << "Accel Processed" << endl;
	printf("X: %f \n",accel_values.x);
	printf("Y: %f \n",accel_values.y);
	printf("Z: %f \n",accel_values.z);

	cout << "Gyro Processed" << endl;
	printf("X: %f \n",gyro_values.x);
	printf("Y: %f \n",gyro_values.y);
	printf("Z: %f \n",gyro_values.z);
	*/

	return 0;
}


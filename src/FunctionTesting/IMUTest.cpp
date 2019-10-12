#include <iostream>
#include <errno.h>
#include <unistd.h>
#include <math.h>
#include "../IMU/IMUSensor.h"
#include <pigpio.h>

using namespace std;

int main(){

	int acc = 2;
	int gyro = 2000;
	rawData_t dataA;
	rawData_t dataG;
	sensorValue_t proA;
	sensorValue_t proG;
	
	cout << "Enter Sensitivities: acc gyro" << endl;
	cout << "Accel(2,4,8) and Gyro(250,500,1000,2000)" << endl;
	cin >> acc >> gyro;
	
	cout <<"Accel Sensitivity: " << acc << " Gyro Sensitivity: " << gyro << endl;
	
	gpioCfgSetInternals(1<<10);
	gpioInitialise();

	accel_function(acc,&dataA,&proA);
	gyro_function(gyro,&dataG,&proG);

	gpioTerminate();
	
	//Mathematical testing of Accel readings 
	float Rx = proA.x;
	float Ry = proA.y;
	float Rz = proA.z;
	cout<<"Accel values in m/s^2: x y z"<<endl;
	cout<<Rx<<" "<<Ry<<" "<<Rz<<endl;
	double R = sqrt(pow(Rx,2)+pow(Ry,2)+pow(Rz,2));
	double cosX = Rx/R;	
	double cosY = Ry/R;
	double cosZ = Rz/R;
	//cout<<cosX<<" "<<cosY<<" "<<cosZ<<endl;
	double check = sqrt(pow(cosX,2)+pow(cosY,2)+pow(cosZ,2));
	cout<<"Check Accel value(if 1 value is correct) is : "<<check<<endl;
	//Mathematical testing of Gyro readings
	Rx = proG.x;
	Ry = proG.y;
	Rz = proG.z;
	cout<<"Gyro values in rad/s: x y z"<<endl;
	cout<<Rx<<" "<<Ry<<" "<<Rz<<endl;
	R = sqrt(pow(Rx,2)+pow(Ry,2)+pow(Rz,2));
	cosX = Rx/R;	
	cosY = Ry/R;
	cosZ = Rz/R;
	//cout<<cosX<<" "<<cosY<<" "<<cosZ<<endl;
	check = sqrt(pow(cosX,2)+pow(cosY,2)+pow(cosZ,2));
	cout<<"Check Gyro value(if 1 value is correct) is : "<<check<<endl;


	return 0;
}


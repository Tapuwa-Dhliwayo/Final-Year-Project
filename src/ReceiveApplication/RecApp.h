//Header file for Receive Application

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



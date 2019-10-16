# Full-System

Final Year Project (Assume that this code will be run on a Raspberry Pi3B)

Following packages needed to be installed before proceeding using:

sudo apt install git subversion

sudo apt install build-essential

sudo apt install cmake cmake-curses-gui

sudo apt install libfltk1.3-dev

sudo apt install libtiff5-dev

To begin using MOOS-IvP https://oceanai.mit.edu/svn/moos-ivp-aro/releases/moos-ivp-19.8.1 into the directory /home/pi/moos-ivp 

 Once this is cloned, build the MOOS-IvP middleware from the /home/pi/moos-ivp directory using:
 
sudo ./build.sh

sudo ./build-moos.sh install

sudo ./build-ivp.sh install

Once this is buillt, clone https://github.com/Tapuwa-Dhliwayo/Final-Year-Project.git into the directory /home/pi/mymoos

To build the code run the following line of code in the /home/pi/moos-ivp/mymoos/build directory:

sudo ccmake ../src 

Once the code built is each program can be found in their respective directories that can be run using  sudo ./ command

Program Breakdown and Usage

Firstly to run the MOOSDB server, its executable can be found in the /home/pi/moos-ivp/bin directory and started using:

sudo ./MOOSDB (This can run in the background)

The function will be described based on the directories they reside in

Arduino Directory

The following files are Arduino scripts that were used during testing

simple\_serial\_comms.ino

The above script allows the Arduino to detect either "IMU" or "GPS" message strings and reply back with "Ok 1" and "Ok 2" respectively.

simple\_serial\_length.ino

The above script allows the Arduino to echo back the string that it receives.

The ARD.h is a library used to communicate with the Arduino through serial protocols, it contains the following function:

int ard(std::string* data); - this functions sends a string called data to Arduino and displays the reply from the Arduino and its byte size.

FunctionTesting Directory

ArdTest.cpp //This is the test function that sends strings to the Arduino and waits for a reply

GPSTest.cpp //This tests the GPS network to see if the data received by gpsd process is being read

IMUTest.cpp //This tests the IMU device at various sensitivities and checks the mathematically correctness of the vectors it reads

MOOSTests.cpp //The test opens a receiving and posting network through the MOOSDB server and sends data to the receiver end which prints out the sent data from two different notification heads(IMU and GPS)

funcTests.cpp //This tests the clogger,compress and decoder functions by running through all three stages and repeating the tests to see if it matches a control file

unitTest.cpp //This unitTests the huffman compression support functions

GPS Directory

The GPS.h library used to communicate with the GPS (Unsuccessfully implemented fixed in the repository with a changed usage)

The function  gps() //Failed implementation

the function gpsFix() //Correct gps implemenetation that runs a separate process continously sampling the gpsd process for data through a local network 

IMU Directory

IMSensor.h //This contains the defitions utilised by accel_function & gyro_function

accel_function() //This takes the sensitivity value and polls the IMU device for raw data and processing into m/s^2

gyro_function() //This takes the sensitivity value and polls the IMU device for raw data and processes into rad

clogger.h //This contains the functions used to store the IMU data

clogger() //This function logs the IMU data

compress() //This function compresses text files and deletes them using HUffman Compression

decoder() //This function decodes compressed files

The compress and decoder functions utilise the huff.h file

PostApplication Directory

PostApp.h

sampleIMU() //samples the IMU data and posts it

sampleGPS() //sampls the GPS data and and posts it

simGPS() //simulates the GPS posting behaviour

ReceiveApplication Directory

RecApp.h 

IMU() //Receives the IMU data(interrupt callback routine)

logIMUFunc() //This function logs the Accel and Gyro data and compresses it into the Log/IMU/Acell and Log/IMU/Gyro directories

GPS() //Receives the GPS data(interrupt callback routine)

logGPSFunc() //This function logs the GPS data and compresses it into the Log/GPS directory

checkStorage() //This checks the Log directory to find out if the disk space has gone below 4Mb of space

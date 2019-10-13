void IMU();
void GPS();

void setup() {
  //Serial set to start
  Serial.begin(115200);
}

void loop() {
  //Store serial read into a string
  String cmd;
  while(Serial.available()){
    cmd = Serial.readString();
    }
  if(cmd.equals("IMU\n")){IMU();}
  
  else if(cmd.equals("GPS\n")){GPS();}
}
void IMU(){
  //Prints this message when it receives IMU message
  Serial.println("Ok 1");
  }

void GPS(){
  //Prints this message when it receives GPS message
  Serial.println("Ok 2");
  }


void setup() {
  //Serial set to start
  Serial.begin(115200);
}

void loop() {
  //Store serial read into a string
  String all;
  while(Serial.available()){
    all = Serial.readString();
    }
  Serial.print(all);
}

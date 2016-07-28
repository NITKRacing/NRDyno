void setup() {
  Serial.begin(2*115200);
  attachInterrupt(0,alert,RISING); 
}

void loop() {
}
void alert(){
  Serial.println(micros());
  }

void setup() {
  Serial.begin(115200);
  attachInterrupt(0,alert,RISING); 
  delay(2000);
}

void loop() {
}
void alert(){
  Serial.print(micros());
  }

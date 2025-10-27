void setup() {
// initialize serial communication at 9600 bits per second:
Serial.begin(9600);
}
// the loop function runs over and over again forever
void loop() {
// read the input on analog pin 0 and pin 1:
int sensorValue1 = analogRead(A0);
int sensorValue2 = analogRead(A1);
// print out the value you read:
Serial.println(sensorValue1);
Serial.println(sensorValue2);
delay(1); // delay in between reads for stability
}
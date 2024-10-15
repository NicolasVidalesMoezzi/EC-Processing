int switchPin = 0;  // Switch connected to pin 4

uint8_t uno = 1;
uint8_t cero = 0;

void setup() {
  pinMode(switchPin, INPUT);  // Set pin 0 as an input
  Serial.begin(9600);         // Start serial communication at 9600 bps
}

void loop() {
  if (digitalRead(switchPin) == HIGH) {  // If switch is ON,
    Serial.write(uno);                     // send 1 to Processing
  } else {                               // If the switch is not ON,
    Serial.write(cero);                     // send 0 to Processing
  }
  delay(100);                            // Wait 100 milliseconds
}
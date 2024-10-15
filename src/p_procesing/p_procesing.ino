//int switchPin = 0;  // Switch connected to pin 4

uint8_t uno = 1;
uint8_t cero = 0;

float val;

void setup() {
  //pinMode(switchPin, INPUT);  // Set pin 0 as an input
  pinMode(A0, INPUT);
  Serial.begin(2000000);         // Start serial communication at 9600 bps
}

void loop() {
 

  val = analogRead(A0);
  //Serial.println(val);
  
 if (val>3) {  // If switch is ON,
    Serial.write(uno);                     // send 1 to Processing
  } else {                               // If the switch is not ON,
    Serial.write(cero);                     // send 0 to Processing
  }
                            // Wait 100 milliseconds
}
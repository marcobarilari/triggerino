#include "Keyboard.h"

int ledPin = 10;

void setup() {
  // put your setup code here, to run once:

  Keyboard.begin();
  pinMode(ledPin, OUTPUT);

}

void loop() {
  // put your main code here, to run repeatedly:

  Keyboard.print('t');
  
  digitalWrite(ledPin, HIGH); 

  delay(1800); //msec

    digitalWrite(ledPin, LOW); 


}

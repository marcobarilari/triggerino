#include "Keyboard.h"

// select the pin where the is the led
int ledPin = 13;

void setup() {

  // init keyboard
  Keyboard.begin();

  // init led
  pinMode(ledPin, OUTPUT);

}

void loop() {

  // print the letter that is red as the trigger by PTB
  Keyboard.print('t');

  // led ON
  digitalWrite(ledPin, HIGH); 
  
  // wait for the TR time
  delay(100); //msec

  // led OFF
  digitalWrite(ledPin, LOW); 

  // wait for the TR time
  delay(1600); //msec

}

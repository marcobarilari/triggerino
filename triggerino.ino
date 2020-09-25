#include "Keyboard.h"

// set trigger key
char triggerKey = 't';

// set TR in msec
int TR = 1800;

// select the pin where the is the led
int ledPin = 10;

// set the pin where is the switch button
int buttonPin = 2;

// set the initial state of the button to OFF
int buttonState = 0;

void setup() {

  // init keyboard
  Keyboard.begin();

  // init button as:
  pinMode(buttonPin, INPUT);

  // init led as:
  pinMode(ledPin, OUTPUT);

}

void loop() {

  // read if the button is pressed or not
  buttonState = digitalRead(buttonPin);

  if (buttonState == HIGH) {

  // print the letter that is red as the trigger by PTB
  Keyboard.print(triggerKey);

  // led ON
  digitalWrite(ledPin, HIGH);

  // wait for the TR time
  delay(50); //msec

  // led OFF
  digitalWrite(ledPin, LOW);

  // wait for the TR time
  delay(TR-50);

  } else {

  // led ON
  digitalWrite(ledPin, HIGH);

  }

}

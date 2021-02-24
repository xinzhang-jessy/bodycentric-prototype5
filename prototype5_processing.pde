
//**************Body Centric Tech
//**************Prototype5 output visualization

import processing.serial.*;
Serial mySerial;

String myString;
int myVal=99;
int Y_AXIS = 1;
int X_AXIS = 2;
color c1, c2;
int val1, val2, val3, val4;

void setup(){
 size(1000,1000);
 String myPort = Serial.list()[6];
 mySerial = new Serial(this, myPort, 9600);
 mySerial.bufferUntil('\n');
 
  c1 = color(6,33, 189);
  c2 = color(143,17, 183);
}

void draw(){
  drawRect(0,0,500,500, val1);
  drawRect(0,500,500,500, val2);
  drawRect(500,0,500,500, val3);
  drawRect(500,500,500,500, val4);
};

void drawRect(int x, int y, float w, float h, int num){
  float inter = map(num, 0, 900, 0, 1);
  color c = lerpColor(c1, c2, inter);
  fill(c);
  stroke(255);
  rect(x,y,w,h);
}


void serialEvent(Serial myPort) {
  myString = myPort.readStringUntil('\n');
  int[] vals = int(split(myString, ","));
  val1 = vals[0];
  val2 = vals[1];
  val3 = vals[2];
  val4 = vals[3];
  println(val1, val2, val3, val4);
} 

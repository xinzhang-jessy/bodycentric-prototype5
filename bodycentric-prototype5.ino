//**************Body Centric Tech
//**************Prototype5 Textile Pressure Pad

int sensor1 = A0;// pressure sensor #1
int sensor2 = A1;// pressure sensor #2
int sensor3 = A2;// pressure sensor #3
int sensor4 = A3;// pressure sensor #4

void setup() {
 pinMode(LEDpin, OUTPUT);
 pinMode(sensor1, INPUT);//read
 pinMode(sensor2, INPUT);//read
 pinMode(sensor3, INPUT);//read
 pinMode(sensor4, INPUT);//read
}

void loop() {
    int v1 = analogRead(sensor1);
    int v2 = analogRead(sensor2);
    int v3 = analogRead(sensor3);
    int v4 = analogRead(sensor4);
    
  Serial.print(v1);
  Serial.print(",");
  
  Serial.print(v2);
  Serial.print(",");
  
  Serial.print(v3);
  Serial.print(",");
  
  Serial.println(v4);
  
  delay(1000);
}

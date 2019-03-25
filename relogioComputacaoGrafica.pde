float angulo = 360/60;
float angulo2 = 360/12;
int raio = 170;
int raioHour =70; 

int raioMedio = 190;
int raioMaior = 200;
void setup() {
  size(600, 500);
}

void draw() {
  int h = hour();
  h=h%12;
  int m = minute();
  int s = second();
  
 
  translate(width/2, height/2);
  
  background(255);
  noFill();
  strokeWeight(6);
  stroke(0, 0, 255);
  ellipse(0, 0, 400, 400);
  
  stroke(0, 0, 0);
  strokeWeight(2);
  line(0, 0, raio* cos(s* PI/30 - PI/2), raio* sin(s* PI/30 - PI/2) );
  strokeWeight(3);
  line(0, 0,  0.9* (raio*  (cos(PI/1800* (m* 60 + s) - PI/2))),  0.9* ( raio* sin((PI/1800* (m* 60 + s) - PI/2))));
  strokeWeight(4);
  line(0, 0,  0.6* (raio*  (cos(PI/1800* (h* 60 + m) ))),  0.6* ( raio* sin((PI/1800* (h* 60 + m) ))));
  strokeWeight(2);
  
  
 
  fill(50);
  text("Hora:" + h + ":" + m + ":" + s, 1, height);
  
  for(int i=0; i < 60; i++){
    line( raioMedio* cos(i* TWO_PI/60 ), raioMedio* sin(i* TWO_PI/60 ),  raioMaior* cos(i* TWO_PI/60 ),  raioMaior* sin(i* TWO_PI/60 ));
  }
  stroke(255, 0, 0);
  strokeWeight(3);
  for(int i=0; i < 12; i++){
    line( raio* cos(i* TWO_PI/12 ), raio* sin(i* TWO_PI/12 ),  raioMaior* cos(i* TWO_PI/12 ),  raioMaior* sin(i* TWO_PI/12 ));
  }
  stroke(0, 0, 0);
  strokeWeight(10);
  circle(0, 0, 10);
  
  
}

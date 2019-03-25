
// PESQUISAR LSYSTEM


float raioTerra, raioSol, raioLua;
float solX, solY, distanciaSolTerra, distanciaLuaTerra;
float anguloTerra, anguloLua;

void setup(){
  size(500,500);
  raioSol = 0.2*width;
  raioTerra = 0.5*raioSol;
  raioLua = 0.5*raioTerra;
  solX = width/2;
  solY = height/2;
  distanciaSolTerra = 1.3*raioSol;
  distanciaLuaTerra = 2*raioLua;
  anguloTerra=0;
  anguloLua=0;
}

void desenhaTerra(){
  pushMatrix();
  rotate(anguloTerra);
  translate(distanciaSolTerra,0);
  circle(0,0,raioTerra); 
  desenhaLua();
  popMatrix();
}
void desenhaSol(){
    pushMatrix();
    translate(solX, solY);
    circle(0,0,raioSol); 
    desenhaTerra();
    popMatrix();
}
void desenhaLua(){
  
   pushMatrix();
  rotate(anguloLua);
  translate(distanciaLuaTerra,0);
  circle(0,0,raioLua); 
  popMatrix();
}

void draw(){
  background(0);
  desenhaSol();
  anguloTerra += PI/100;
  anguloLua += PI/10;
  
}

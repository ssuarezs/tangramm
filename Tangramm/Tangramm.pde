color W = color(250,230,210);
//color de las figuras ( T = triangulos, Q = trapecios )
color T1= color(80,180,100);
color T2= color(250,150,100);
color T3= color(180,60,60);
color T4= color(170,20,60);
color T5= color(60,45,150);
color Q1= color(180,180,100);
color Q2= color(80,90,170);

//variables usadas para la seleccion de la figura
    int seleccionado=0;
    int Seleccion = 0;
    color obj_sel;
    int coorX = mouseX;
    int coorY = mouseY;
    
//posicion de las figuras

float[] Tria_1= new float [3];
float[] Tria_2= new float [3];
float[] Tria_3= new float [3];
float[] Tria_4= new float [3];
float[] Tria_5= new float [3];
float[] Cuad= new float [3];
float[] Trap= new float [5];
      
float rotacionD(float x){
  x = x + PI/4;
  return x;
}
float rotacionI(float x){
  x = x - PI/4;
  return x;
}
float scaled(float x){
  x = x*(-1);
  return x;
}

      
void setup(){
  size(1200,680);
  background(W);
  strokeWeight(4);
  Tria_1 [0]= 100; Tria_1 [1]= 100; Tria_1 [2]= 0;
  Tria_2 [0]= 420; Tria_2 [1]= 400; Tria_2 [2]= PI;
  Tria_3 [0]= 100; Tria_3 [1]= 420; Tria_3 [2]= 0;
  Tria_4 [0]= 220; Tria_4 [1]= 530; Tria_4 [2]= PI/4;
  Tria_5 [0]= 230; Tria_5 [1]= 520; Tria_5 [2]= -PI/4;
  Cuad [0]= 350; Cuad [1]= 430; Cuad [2]= 0;
  Trap [0]= 450; Trap [1]= 100; Trap [2]= -PI/2; Trap [3]= -1; Trap [4]= 1;
}     
    
    
void draw(){
  background(W);
    //triangulo1
    pushMatrix();
    translate(Tria_1 [0], Tria_1 [1]); rotate(Tria_1 [2]);
      fill(T1);
      triangle(0,0,300,0,0,300);
      popMatrix();
    //triangulo2
    pushMatrix();
    translate(Tria_2 [0], Tria_2 [1]); rotate(Tria_2 [2]);
      fill(T2);
      triangle(0,0,300,0,0,300);      
      popMatrix();
    //triangulo3
    pushMatrix();
    translate(Tria_3 [0], Tria_3 [1]); rotate(Tria_3 [2]);
      fill(T3);
      triangle(0,0,212,0,0,212);
      popMatrix();
    //triangulo4
    pushMatrix();
    translate(Tria_4 [0], Tria_4 [1]); rotate(Tria_4 [2]);
      fill(T4);
      triangle(0,0,150,0,0,150);
      popMatrix();
    //triangulo5
    pushMatrix();
    translate(Tria_5 [0], Tria_5 [1]); rotate(Tria_5 [2]);
      fill(T5);
      triangle(0,0,150,0,0,150);
      popMatrix();
    //cuadrado
    pushMatrix();
    translate(Cuad [0], Cuad [1]); rotate(Cuad [2]);
      fill(Q1);
      rect(0,0,150,150);
      popMatrix();
    //trapecio2
    pushMatrix();
    translate(Trap [0], Trap [1]); rotate(Trap [2]); scale(Trap [3],Trap [4]);
      fill(Q2);
      quad(0,0,212,0,318,106,106,106);
      popMatrix();
      
}



void mouseClicked() {
  obj_sel = get(mouseX, mouseY);
  if (seleccionado==0) {
    seleccionado = 1;
  }else{
  seleccionado = 0;
  }
        if (obj_sel == T1) {
          Seleccion = 1;
        }
        if (obj_sel == T2) {
          Seleccion = 2;
        }
        if (obj_sel == T3) {
          Seleccion = 3;
        }
        if (obj_sel == T4) {
          Seleccion = 4;
        }
        if (obj_sel == T5) {
          Seleccion = 5;
        }
        if (obj_sel == Q1) {
          Seleccion = 6;
        }
        if (obj_sel == Q2) {
          Seleccion = 7;
        }
        if (obj_sel == W) {
          Seleccion = 0;
        }
  
}

void mouseMoved() {
  if(seleccionado == 1){
          if (Seleccion == 1) {
            Tria_1 [0]=Tria_1 [0]+(mouseX-coorX);
            Tria_1 [1]=Tria_1 [1]+(mouseY-coorY);
          }
          if (Seleccion == 2) {
            Tria_2 [0]=Tria_2 [0]+(mouseX-coorX);
            Tria_2 [1]=Tria_2 [1]+(mouseY-coorY);
          }
          if (Seleccion == 3) {
            Tria_3 [0]=Tria_3 [0]+(mouseX-coorX);
            Tria_3 [1]=Tria_3 [1]+(mouseY-coorY);
          }
          if (Seleccion == 4) {
            Tria_4 [0]=Tria_4 [0]+(mouseX-coorX);
            Tria_4 [1]=Tria_4 [1]+(mouseY-coorY);
          }
          if (Seleccion == 5) {
            Tria_5 [0]=Tria_5 [0]+(mouseX-coorX);
            Tria_5 [1]=Tria_5 [1]+(mouseY-coorY);
          }
          if (Seleccion == 6) {
            Cuad [0]=Cuad [0]+(mouseX-coorX);
            Cuad [1]=Cuad [1]+(mouseY-coorY);
          }
          if (Seleccion == 7) {
            Trap [0]=Trap [0]+(mouseX-coorX);
            Trap [1]=Trap [1]+(mouseY-coorY);
          }
  }
  coorX = mouseX;
  coorY = mouseY;
}

void keyPressed() {
  if(seleccionado == 1){
  if (key == CODED) {
    if (keyCode == UP) {
      if (Seleccion == 1) {
            Tria_1 [2] = rotacionD(Tria_1 [2]);
          }
          if (Seleccion == 2) {
            Tria_2 [2] = rotacionD(Tria_2 [2]);
          }
          if (Seleccion == 3) {
            Tria_3 [2] = rotacionD(Tria_3 [2]);
          }
          if (Seleccion == 4) {
            Tria_4 [2] = rotacionD(Tria_4 [2]);
          }
          if (Seleccion == 5) {
            Tria_5 [2] = rotacionD(Tria_5 [2]);
          }
          if (Seleccion == 6) {
            Cuad [2] = rotacionD(Cuad [2]);
          }
          if (Seleccion == 7) {
            Trap [2] = rotacionD(Trap [2]);
          }
    } else if (keyCode == DOWN) {
      if (Seleccion == 1) {
            Tria_1 [2] = rotacionI(Tria_1 [2]);
          }
          if (Seleccion == 2) {
            Tria_2 [2] = rotacionI(Tria_2 [2]);
          }
          if (Seleccion == 3) {
            Tria_3 [2] = rotacionI(Tria_3 [2]);
          }
          if (Seleccion == 4) {
            Tria_4 [2] = rotacionI(Tria_4 [2]);
          }
          if (Seleccion == 5) {
            Tria_5 [2] = rotacionI(Tria_5 [2]);
          }
          if (Seleccion == 6) {
            Cuad [2] = rotacionI(Cuad [2]);
          }
          if (Seleccion == 7) {
            Trap [2] = rotacionI(Trap [2]);
          }
    } else if (keyCode == LEFT){
          if (Seleccion == 7) {
            Trap [3] = scaled(Trap [3]);
          }
    }
  } 
 }
}
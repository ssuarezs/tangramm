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
    
//FIguras para armar, completar figuras
  int TipoDeFig=1;
  void Dibujar_Fig(int x){
      if(x ==1){fill(10); rect(400,200,283,283);}
      if(x ==2){
      pushMatrix();
    translate(500, 300); rotate(PI);
      fill(0);
      triangle(0,0,200,0,0,200);
      popMatrix();
    pushMatrix();
    translate(500, 300); rotate(PI/2);
      triangle(0,0,200,0,0,200);
      popMatrix();
    pushMatrix();
    translate(603, 250); rotate(3*PI/4);
      triangle(0,0,141,0,0,141);
      popMatrix();
    pushMatrix();
    translate(504, 459); rotate(-PI/4);
      triangle(0,0,100,0,0,100);
      popMatrix();
    pushMatrix();
    translate(504, 146); rotate(-PI/4);
      triangle(0,0,100,0,0,100);
      popMatrix();
    pushMatrix();
    translate(605, 300); rotate(-PI/4);
      rect(0,0,100,100);
      popMatrix();
    pushMatrix();
    translate(503, 455);rotate(3*PI/4); scale(-1,Trap [4]);
      quad(0,0,141,0,212,71,71,71);
      popMatrix();
      }
      
      if(x ==3){
      pushMatrix();
    translate(500, 300); rotate(PI/2);
      fill(0);
      triangle(0,0,200,0,0,200);
      popMatrix();
    pushMatrix();
    translate(500, 500); rotate(-PI/2);
      triangle(0,0,200,0,0,200);
      popMatrix();
    pushMatrix();
    translate(397, 402); rotate(PI/4);
      triangle(0,0,141,0,0,141);
      popMatrix();
    pushMatrix();
    translate(324, 471); rotate(-3*PI/4);
      triangle(0,0,100,0,0,100);
      popMatrix();
    pushMatrix();
    translate(702, 354); rotate(-PI/4);
      triangle(0,0,100,0,0,100);
      popMatrix();
    pushMatrix();
    translate(631, 280); rotate(-PI/4);
      rect(0,0,100,100);
      popMatrix();
    pushMatrix();
    translate(700, 495);rotate(PI/2); scale(-1,Trap [4]);
      quad(0,0,141,0,212,71,71,71);
      popMatrix();
      }
  }
 
    
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

void posicion_inicial(){
  Tria_1 [0]= 10; Tria_1 [1]= 10; Tria_1 [2]= 0;
  Tria_2 [0]= 220; Tria_2 [1]= 210; Tria_2 [2]= PI;
  Tria_3 [0]= 10; Tria_3 [1]= 220; Tria_3 [2]= 0;
  Tria_4 [0]= 83; Tria_4 [1]= 297; Tria_4 [2]= PI/4;
  Tria_5 [0]= 87; Tria_5 [1]= 292; Tria_5 [2]= -PI/4;
  Cuad [0]= 10; Cuad [1]= 385; Cuad [2]= 0;
  Trap [0]= 10; Trap [1]= 500; Trap [2]= 0; Trap [3]= 1; Trap [4]= 1;
}

      
void setup(){
  size(1200,680);
  background(W);
  strokeWeight(4);
  posicion_inicial();
}     
    
    
void draw(){
  background(W);
  
  Dibujar_Fig(TipoDeFig);
    //triangulo1
    pushMatrix();
    translate(Tria_1 [0], Tria_1 [1]); rotate(Tria_1 [2]);
      fill(T1);
      triangle(0,0,200,0,0,200);
      if(Seleccion == 1){stroke(225); triangle(0,0,200,0,0,200); stroke(0);}
      popMatrix();
    //triangulo2
    pushMatrix();
    translate(Tria_2 [0], Tria_2 [1]); rotate(Tria_2 [2]);
      fill(T2);
      triangle(0,0,200,0,0,200);
      if(Seleccion == 2){stroke(225); triangle(0,0,200,0,0,200); stroke(0);}
      popMatrix();
    //triangulo3
    pushMatrix();
    translate(Tria_3 [0], Tria_3 [1]); rotate(Tria_3 [2]);
      fill(T3);
      triangle(0,0,141,0,0,141);
      if(Seleccion == 3){stroke(225); triangle(0,0,141,0,0,141); stroke(0);}
      popMatrix();
    //triangulo4
    pushMatrix();
    translate(Tria_4 [0], Tria_4 [1]); rotate(Tria_4 [2]);
      fill(T4);
      triangle(0,0,100,0,0,100);
      if(Seleccion == 4){stroke(225); triangle(0,0,100,0,0,100); stroke(0);}
      popMatrix();
    //triangulo5
    pushMatrix();
    translate(Tria_5 [0], Tria_5 [1]); rotate(Tria_5 [2]);
      fill(T5);
      triangle(0,0,100,0,0,100);
      if(Seleccion == 5){stroke(225); triangle(0,0,100,0,0,100); stroke(0);}
      popMatrix();
    //cuadrado
    pushMatrix();
    translate(Cuad [0], Cuad [1]); rotate(Cuad [2]);
      fill(Q1);
      rect(0,0,100,100);
      if(Seleccion == 6){stroke(225); rect(0,0,100,100); stroke(0);}
      popMatrix();
    //trapecio2
    pushMatrix();
    translate(Trap [0], Trap [1]); rotate(Trap [2]); scale(Trap [3],Trap [4]);
      fill(Q2);
      quad(0,0,141,0,212,71,71,71);
      if(Seleccion == 7){stroke(225); quad(0,0,141,0,212,71,71,71); stroke(0);}
      popMatrix();
      
      
    textSize(35); 
    fill(60);
    text("Tangram", 950, 60);
    textSize(12); 
    fill(100);
    text("1. Seleccione una figura con click derecho", 900, 90); 
    text("2. mueva el mouse para arrastrar la figura", 900, 105); 
    text("   seleccionada", 900, 120); 
    text("3. utilize las flechas para modificar la ", 900, 135); 
    text("   figura: UP para girarla en contra de las", 900, 150); 
    text("   manecillas del reloj y DOWN para girarla en", 900, 165); 
    text("   sentido a las manecillas del reloj.", 900, 180); 
    text("   Utilize las flechas RIGTH o LEFT, para cambiar ", 900, 195); 
    text("   el sentido del trapecio, cuando este seleccionado.", 900, 210); 
    
    
    //elegir figura 
    textSize(20); text("Eligir figura a completar", 920, 280); textSize(18);
    fill(W);   if(TipoDeFig==1){stroke(150);} rect(930,300,200,60);stroke(0); 
               if(TipoDeFig==2){stroke(150);} rect(930,380,200,60);stroke(0);    
               if(TipoDeFig==3){stroke(150);} rect(930,460,200,60);stroke(0); 
    fill(5);
    text("Cuadrado (Facil)", 940, 330);
    text("Pez (Intermedio)", 940, 410);
    text("Pato (Intermedio)", 940, 490);
    
    if( Tria_1 [0]>530 && Tria_1 [0]<550  && Tria_1 [1]>330 && Tria_1 [1]<350  && 
        Tria_2 [0]>530 && Tria_2 [0]<550  && Tria_2 [1]>330 && Tria_2 [1]<350  && 
        ((Tria_3 [0]>390 && Tria_3 [0]<410)||(Tria_3 [0]>673 && Tria_3 [0]<693))  && 
        ((Tria_3 [1]>190 && Tria_3 [1]<210)||(Tria_3 [1]>473 && Tria_3 [1]<493))  &&
        Tria_4 [0]>465 && Tria_4 [0]<617  && Tria_4 [1]>265 && Tria_4 [1]<417 &&
        Tria_5 [0]>465 && Tria_5 [0]<617  && Tria_5 [1]>265 && Tria_5 [1]<417 &&
        Cuad [0]>390 && Cuad [0]<693  && Cuad [1]>190 && Cuad [1]<493  &&
        ((Trap [0]>390 && Trap [0]<410)||(Trap [0]>673 && Trap [0]<693))  && 
        ((Trap [1]>190 && Trap [1]<210)||(Trap [1]>473 && Trap [1]<493))  &&
        seleccionado == 0 && TipoDeFig == 1){
          fill(140,100,80);
          rect(370,550,345,70,8);
          fill(200);
          text("Has completado la figura 'Cuadrado'", 380, 585);
    }
    
    if( Tria_1 [0]>490 && Tria_1 [0]<510  && Tria_1 [1]>290 && Tria_1 [1]<310  && 
        Tria_2 [0]>490 && Tria_2 [0]<510  && Tria_2 [1]>290 && Tria_2 [1]<310  && 
        Tria_3 [0]>590 && Tria_3 [0]<610  && Tria_3 [1]>240 && Tria_3 [1]<260  &&
        Tria_4 [0]>490 && Tria_4 [0]<514  && ((Tria_4 [1]>450 && Tria_4 [1]<470)  || (Tria_4 [1]>136 && Tria_4 [1]<156) ) &&
        Tria_5 [0]>490 && Tria_5 [0]<514  && ((Tria_5 [1]>450 && Tria_5 [1]<470)  || (Tria_5 [1]>136 && Tria_5 [1]<156) ) &&
        Cuad [0]>590 && Cuad [0]<752  && Cuad [1]>227 && Cuad [1]<369  &&
        Trap [0]>490 && Trap [0]<514 && Trap [1]>445 && Trap [1]<465 && Trap [3]==-1  &&
        seleccionado == 0 && TipoDeFig == 2){
          fill(140,100,80);
          rect(400,550,283,70,8);
          fill(200);
          text("Has completado la figura 'Pez'", 412, 585);
    }
    
    if( Tria_1 [0]>490 && Tria_1 [0]<510  && ((Tria_1 [1]>290 && Tria_1 [1]<310) || (Tria_1 [1]>490 && Tria_1 [1]<510))  && 
        Tria_2 [0]>490 && Tria_2 [0]<510  && ((Tria_2 [1]>290 && Tria_2 [1]<310) || (Tria_2 [1]>490 && Tria_2 [1]<510))  && 
        Tria_3 [0]>387 && Tria_3 [0]<407  && Tria_3 [1]>392 && Tria_3 [1]<412  &&
        ((Tria_4 [0]>314 && Tria_4 [0]<334)  || (Tria_4 [0]>692 && Tria_4 [0]<712) )  && ((Tria_4 [1]>461 && Tria_4 [1]<481)  || (Tria_4 [1]>344 && Tria_4 [1]<364) ) &&
        ((Tria_5 [0]>314 && Tria_5 [0]<334)  || (Tria_5 [0]>692 && Tria_5 [0]<712) )  && ((Tria_5 [1]>461 && Tria_5 [1]<481)  || (Tria_5 [1]>344 && Tria_5 [1]<364) ) &&
        Cuad [0]>625 && Cuad [0]<705  && Cuad [1]>205 && Cuad [1]<355  &&
        Trap [0]>690 && Trap [0]<710 && Trap [1]>485 && Trap [1]<505 && Trap [3]==-1  &&
        seleccionado == 0 && TipoDeFig == 3){
          fill(140,100,80);
          rect(400,550,283,75,8);
          fill(200);
          text("Has completado la figura 'Pato'", 412, 585);
    }
    
}



void mouseClicked() {
  obj_sel = get(mouseX, mouseY);
  if (seleccionado==0 && obj_sel != W) {
    seleccionado = 1;
    
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
    
  }else{
  seleccionado = 0;
  Seleccion = 0;
  }
  
  if(mouseX>930 && mouseX<1130 && mouseY>300 && mouseY<360){
      TipoDeFig = 1;
      posicion_inicial();
  }
  if(mouseX>930 && mouseX<1130 && mouseY>380 && mouseY<440){
      TipoDeFig = 2;
      posicion_inicial();
  }
  
  if(mouseX>930 && mouseX<1130 && mouseY>460 && mouseY<520){
      TipoDeFig = 3;
      posicion_inicial();
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
    if (keyCode == DOWN) {
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
    } else if (keyCode == UP) {
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
    } else if (keyCode == LEFT || keyCode == RIGHT){
          if (Seleccion == 7) {
            Trap [3] = scaled(Trap [3]);
          }
    }
  } 
 }
}
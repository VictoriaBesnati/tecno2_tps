class pincelada {
  //=======================
  float k, v, angulo;//angulo 
  float a [] = new float [5];//angulo 2
  float tx, ty;//tamaño 
  float b;//alpha
  //=======================
  int c; //cantidad 4 a 6;
  //=======================
  PGraphics p;
  //=======================
  //PImage mancha;
  //=======================
  pincelada() {  
    //=======================
    c = int(random(4, 6));
    b = 0;
    //=======================
    a[0] = random(0.2, 0.4);
    a[1] = random(0.2, 0.4);
    a[2] = random(0.2, 0.4);
    a[3] = random(0.2, 0.4);
    a[4] = random(0.6, 0.7); // torcido
    //=======================
    p = createGraphics(width, height);
    p.beginDraw();
    p.rectMode(CENTER);
    p.noStroke();
    p.endDraw();
    //=======================
  }
  /*
  void cambios(boolean izq, boolean der, boolean mov) {
   
   tx = width*0.20;
   ty = height*0.40;
   
   if (b > 300) {
   b = 300;
   }
   if (b <- 10) {
   b = -10;
   }
   if (mov == false) {
   b--;
   }
   if (mov == true) {
   b+=10;
   }
   if (izq == true) {
   v++;
   } 
   if (der == true) {
   v--;
   }
   k = 60; // 130 (1) - 220(2) - 60 (3)
   k = k+v;
   
   angulo = radians(k);
   }
   */
  void cambios(boolean grave, boolean agudo, boolean sonido, float pitch) {
    //=======================
    tx = width*0.20;
    ty = height*0.40;
    //=======================
    if (b > 300) {
      b = 300;
    }
    if (b <- 10) {
      b = -10;
    }
    if (sonido == false) {
      b--;
    }
    //=======================
    if (sonido == true) {
      b+=10;
      if (grave == true) {
        v += pitch;
      } 
      if (agudo == true) {
        v-=pitch*0.1;
      }
    }
    //=======================
    k = 60; // 130 (1) - 220(2) - 60 (3)
    k = k+v;

    angulo = radians(k);
    //=======================
  }
  void dibujar() {
    //=======================
    p.beginDraw();
    p.background(255, 5);
    p.translate(width/2, height/2);
    //println(k);
    switch(c) {
    case 3:
      //---------------------------------- medio
      p.push();
      p.rotate(angulo);
      p.fill(0, b);
      p.rect(-100, -50, tx, ty);
      //naranja
      p.fill(#ee2d23, b);
      p.rect(-115, -75, tx-15, ty-15);
      //Amarillo
      p.fill(#f2782d, b);
      p.rect(-90, -40, tx-25, ty-25);
      p.pop();
      //---------------------------------- 
      p.push();
      p.rotate(angulo+a[0]);
      p.fill(0, b);
      p.rect(170, 170, tx, ty);
      //naranja
      p.fill(#ee2d23, b);
      p.rect(190, 190, tx-15, ty-15);
      //Amarillo
      p.fill(#f2782d, b);
      p.rect(150, 150, tx-25, ty-25);
      p.pop();
      //---------------------------------- 
      p.push();
      p.rotate(angulo+a[4]);
      p.fill(0, b);
      p.rect(-40, -230, tx-70, ty-200);
      p.fill(#ee2d23, b);
      p.rect(-30, -220, tx-85, ty-215);
      p.fill(#f2782d, b);
      p.rect(-50, -250, tx-95, ty-225);
      p.pop();
      break;
    case 4: 
      //---------------------------------- medio
      p.push();
      p.rotate(angulo);
      p.fill(0, b);
      p.rect(0, 180, tx, ty);
      //naranja
      p.fill(#ee2d23, b);
      p.rect(10, 190, tx-15, ty-15);
      //Amarillo
      p.fill(#f2782d, b);
      p.rect(-20, 160, tx-25, ty-25);
      p.pop();
      //---------------------------------- der arriba
      p.push();
      p.rotate(angulo+a[0]);
      p.fill(0, b);
      p.rect(-250, -100, tx, ty);
      p.fill(#ee2d23, b);
      p.rect(-240, -90, tx-15, ty-15);
      p.fill(#f2782d, b);
      p.rect(-260, -120, tx-25, ty-25);
      p.pop();
      //---------------------------------- izq abajo
      p.push();
      p.rotate(angulo-a[1]);
      p.fill(0, b);
      p.rect(270, 70, tx, ty);
      p.fill(#ee2d23, b);
      p.rect(280, 80, tx-15, ty-15);
      p.fill(#f2782d, b);
      p.rect(250, 50, tx-25, ty-25);
      p.pop();
      //---------------------------------- torcido
      p.push();
      p.rotate(angulo+a[4]);
      p.fill(0, b);
      p.rect(-40, -230, tx-70, ty-200);
      p.fill(#ee2d23, b);
      p.rect(-30, -220, tx-85, ty-215);
      p.fill(#f2782d, b);
      p.rect(-50, -250, tx-95, ty-225);
      p.pop();
      break;
    case 5: 
      p.push();
      p.rotate(angulo);
      p.fill(0, b);
      p.rect(-100, -50, tx, ty);
      //--------------naranja
      p.fill(#ee2d23, b);
      p.rect(-115, -75, tx-15, ty-15);
      //--------------Amarillo
      p.fill(#f2782d, b);
      p.rect(-90, -40, tx-25, ty-25);
      p.pop();
      //------------------------
      p.push();
      p.rotate(angulo+a[0]);
      p.fill(0, b);
      p.rect(-250, -100, tx, ty);
      //--------------naranja
      p.fill(#ee2d23, b);
      p.rect(-240, -90, tx-15, ty-15);
      p.fill(#f2782d, b);
      p.rect(-260, -120, tx-25, ty-25);
      p.pop();
      //------------------------
      p.push();
      p.rotate(angulo+a[1]);
      p.fill(0, b);
      p.rect(170, 170, tx, ty);
      //--------------naranja
      p.fill(#ee2d23, b);
      p.rect(150, 150, tx-15, ty-15);
      p.fill(#f2782d, b);
      p.rect(190, 190, tx-25, ty-25);
      p.pop();
      //------------------------
      p.push();
      p.rotate(angulo+a[2]);
      p.fill(0, b);
      p.rect(0, 300, tx, ty);
      //--------------naranja
      p.fill(#ee2d23, b);
      p.rect(20, 320, tx-15, ty-15);
      p.fill(#f2782d, b);
      p.rect(-20, 280, tx-25, ty-25);
      p.pop();
      //------------------------
      p.push();
      p.rotate(angulo+a[4]);
      p.fill(0, b);
      p.rect(-40, -230, tx-70, ty-200);
      //--------------naranja
      p.fill(#ee2d23, b);
      p.rect(-30, -220, tx-85, ty-215);
      p.fill(#f2782d, b);
      p.rect(-50, -250, tx-95, ty-225);
      p.pop();
      break;
    case 6: 
      p.push();
      p.rotate(angulo);
      p.fill(0, b);
      p.rect(-100, 180, tx, ty);
      //--------------naranja
      p.fill(#ee2d23, b);
      p.rect(-80, 200, tx-15, ty-15);
      //--------------Amarillo
      p.fill(#f2782d, b);
      p.rect(-140, 160, tx-25, ty-25);
      p.pop();
      //---------------------------
      p.push();
      p.rotate(angulo);
      p.fill(0, b);
      p.rect(-400, 180, tx, ty);
      //--------------naranja
      p.fill(#ee2d23, b);
      p.rect(-380, 200, tx-15, ty-15);
      //--------------Amarillo
      p.fill(#f2782d, b);
      p.rect(-440, 160, tx-25, ty-25);
      p.pop();
      //---------------------------
      p.push();
      p.rotate(angulo);
      p.fill(0, b);
      p.rect(200, 200, tx, ty);
      //--------------naranja
      p.fill(#ee2d23, b);
      p.rect(180, 220, tx-15, ty-15);
      //--------------Amarillo
      p.fill(#f2782d, b);
      p.rect(220, 180, tx-25, ty-25);
      p.pop();
      //---------------------------
      p.push();
      p.rotate(angulo);
      p.fill(0, b);
      p.rect(280, -200, tx, ty);
      //--------------naranja
      p.fill(#ee2d23, b);
      p.rect(250, -220, tx-15, ty-15);
      //--------------Amarillo
      p.fill(#f2782d, b);
      p.rect(300, -180, tx-25, ty-25);
      p.pop();
      //---------------------------
      p.push();
      p.rotate(angulo);
      p.fill(0, b);
      p.rect(-400, -240, tx, ty);
      //--------------naranja
      p.fill(#ee2d23, b);
      p.rect(-380, -260, tx-15, ty-15);
      //--------------Amarillo
      p.fill(#f2782d, b);
      p.rect(-440, -280, tx-25, ty-25);
      p.pop();
      //---------------------------
      p.push();
      p.rotate(angulo);
      p.fill(0, b);
      p.rect(-100, -260, tx, ty);
      //--------------naranja
      p.fill(#ee2d23, b);
      p.rect(-180, -300, tx-15, ty-15);
      //--------------Amarillo
      p.fill(#f2782d, b);
      p.rect(-140, -240, tx-25, ty-25);
      p.pop();
      break;
    }
    image(p, 0, 0);
    p.endDraw();
    //=======================
  }
}

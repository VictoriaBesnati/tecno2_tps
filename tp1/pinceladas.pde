class pincelada {
  //=======================
  float k, v, angulo;//angulo 
  float a [] = new float [5];//angulo 2
  float x [] = new float [6];//random
  float y [] = new float [6];//random
  float tx, ty;//tamaño 
  float b;//alpha
  //=======================
  int c; //cantidad 4 a 6;
  //=======================
  PGraphics p;
  //=======================
  int cm = 11;
  int ri [] = new int [cm];//random
  PImage [] mancha = new PImage [cm];
  //=======================
  pincelada() {  
    //=======================
    //c=3;
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
    for (int i = 1; i < cm; i++) {
      mancha [i] = loadImage(i+".png");
    }
    //=======================
    ri[0] = int(random(1, cm));
    ri[1] = int(random(1, cm));
    ri[2] = int(random(1, cm));
    ri[3] = int(random(1, cm));
    ri[4] = int(random(1, cm));
    ri[5] = int(random(1, cm));
    ri[6] = int(random(1, cm));
    ri[7] = int(random(1, cm));
    ri[8] = int(random(1, cm));
    ri[9] = int(random(1, cm));
    ri[10] = int(random(1, cm));
    //=======================
    x[0] = int(random(-250, 150));
    x[1] = int(random(-250, 150));
    x[2] = int(random(-250, 150));
    x[3] = int(random(-250, 150));
    x[4] = int(random(-250, 150));
    x[5] = int(random(-250, 150));
    //=======================
    y[0] = int(random(-200, 250));
    y[1] = int(random(-200, 250));
    y[2] = int(random(-200, 250));
    y[3] = int(random(-200, 250));
    y[4] = int(random(-200, 250));
    y[5] = int(random(-200, 250));
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
    tx = width*0.40;
    ty = height*0.80;
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
      p.tint(255, b);
      p.image(mancha[ri[1]], x[0], y[0], tx, ty);
      p.pop();
      //---------------------------------- 
      p.push();
      p.rotate(angulo+a[0]);
      p.tint(255, b);
      p.image(mancha[ri[1]], x[1], y[1], tx, ty);
      p.pop();
      //---------------------------------- 
      p.push();
      p.rotate(angulo+a[4]);
      p.tint(255, b);
      p.image(mancha[ri[3]], x[2], y[2], tx, ty);
      p.pop();
      break;
    case 4: 
      //---------------------------------- 
      p.push();
      p.rotate(angulo);
      p.tint(255, b);
      p.image(mancha[ri[1]], x[0], y[0], tx, ty);
      p.pop();
      //---------------------------------- 
      p.push();
      p.rotate(angulo);
      p.tint(255, b);
      p.image(mancha[ri[2]], x[1], y[1], tx, ty);
      p.pop();
      //---------------------------------- 
      p.push();
      p.rotate(angulo);
      p.tint(255, b);
      p.image(mancha[ri[3]], x[2], y[2], tx, ty);
      p.pop();
      //---------------------------------- 
      p.push();
      p.rotate(angulo);
      p.tint(255, b);
      p.image(mancha[ri[4]], x[3], y[3], tx, ty);
      p.pop();
      //---------------------------------- 
      break;
    case 5: 
      p.push();
      p.rotate(angulo);
      p.tint(255, b);
      p.image(mancha[ri[1]], x[0], y[0], tx, ty);
      p.pop();
      //---------------------------------- 
      p.push();
      p.rotate(angulo);
      p.tint(255, b);
      p.image(mancha[ri[2]], x[1], y[1], tx, ty);
      p.pop();
      //---------------------------------- 
      p.push();
      p.rotate(angulo);
      p.tint(255, b);
      p.image(mancha[ri[3]], x[2], y[2], tx, ty);
      p.pop();
      //---------------------------------- 
      p.push();
      p.rotate(angulo);
      p.tint(255, b);
      p.image(mancha[ri[4]], x[3], y[3], tx, ty);
      p.pop();
      //---------------------------------- 
      p.push();
      p.rotate(angulo);
      p.tint(255, b);
      p.image(mancha[ri[5]], x[4], y[4], tx, ty);
      p.pop();
      
      break;
    case 6: 
      p.push();
      p.rotate(angulo);
      p.tint(255, b);
      p.image(mancha[ri[1]], x[0], y[0], tx, ty);
      p.pop();
      //---------------------------------- 
      p.push();
      p.rotate(angulo);
      p.tint(255, b);
      p.image(mancha[ri[2]], x[1], y[1], tx, ty);
      p.pop();
      //---------------------------------- 
      p.push();
      p.rotate(angulo);
      p.tint(255, b);
      p.image(mancha[ri[3]], x[2], y[2], tx, ty);
      p.pop();
      //---------------------------------- 
      p.push();
      p.rotate(angulo);
      p.tint(255, b);
      p.image(mancha[ri[4]], x[3], y[3], tx, ty);
      p.pop();
      //---------------------------------- 
      p.push();
      p.rotate(angulo);
      p.tint(255, b);
      p.image(mancha[ri[5]], x[4], y[4], tx, ty);
      p.pop();
      
      p.push();
      p.rotate(angulo);
      p.tint(255, b);
      p.image(mancha[ri[6]], x[5], y[5], tx, ty);
      p.pop();
      break;
    }
    p.endDraw();
    //=======================
    push();
    image(p, 0, 0);
    pop();
  }
}

class pinceladas {
  //============ ANGULO ==========
  float a = 130, v, angulo; //a(origen) / variable(destino) / radians angulo
  float an [] = new float [5];//Random para los angulos
  float pitch2;
  //=========== TAMAÑO ===========
  float tx, ty;
  float tx2, ty2;
  //========= UBICACION ==========
  float x = 0;
  float x1 = 0;
  float x2 = 0;
  float min = -60;
  float max = 100;
  //=========== ALPHA ============
  float b = 0;//Brillo CAMBIAR A 0 ANTES DE ENTREGAR
  //========== CANTIDAD ==========
  int c = 3;// Cantidad que se muetran
  int cant = 4;//Arreglo
  //========= IMAGENES ===========
  PGraphics p;
  PImage pin [] = new PImage [cant];
  PImage pia [] = new PImage [cant];
  PImage pir [] = new PImage [cant];
  int [] r = new int [5];//Random de imagenes
  //-----------------------
  pinceladas() {
    //-----------------------
    p = createGraphics(width, height);
    p.beginDraw();
    p.imageMode(CENTER);
    p.endDraw();
    //========= IMAGENES ===========
    for (int i = 0; i < cant; i++) {
      pin [i] = loadImage("n"+i+".png");
    }
    for (int i = 0; i < cant; i++) {
      pia [i] = loadImage("a"+i+".png");
    }
    for (int i = 0; i < cant; i++) {
      pir [i] = loadImage("r"+i+".png");
    }
    //-----------------------
    r[0] = int(random(0, cant));
    r[1] = int(random(0, cant));
    r[2] = int(random(0, cant));
    r[3] = int(random(0, cant));
    r[4] = int(random(0, cant));
    //============ ANGULO ==========
    an[0] = random(0.2, 0.4);
    an[1] = random(0.2, 0.4);
    an[2] = random(0.2, 0.4);
    an[3] = random(0.2, 0.4);
    an[4] = random(0.6, 0.9); //    torcido
  }
  void cambios(boolean grave, boolean agudo, boolean sonido, boolean alto, boolean bajo) {

    if (sonido == true) {
      b+=10;
      x+=5;
      x1+=0.5;
      x2+=1.5;

      if (grave == true && sonido == true) {
        v+=0.1;
      } 
      if (agudo == true && sonido == true) {
        v-=0.1;
      }
      if (v > 0.9) {
        v=0.9;
      }
    }
    if (sonido == false) {
      b--;
      x--;
      x1-=0.5;
      x2-=1.5;
      v=0;
    }
    //-----------------------
    if (alto == true && sonido == true) {
      c++;
    }
    if (bajo == true && sonido == true) {
      c--;
    }
  }
  void actualizar() {
    //=========== TAMAÑO ===========
    tx = width*0.60;
    ty = height*0.35;

    tx2 = width*0.35;
    ty2 = height*0.40;
    //========== CANTIDAD ==========
    if (c > 5) {
      c = 5;
    }
    if (c < 3) {
      c = 3 ;
    }
    //=========== ALPHA ============
    if (b > 300) {
      b = 300;
    }
    if (b <- 10) {
      b = -10;
    }
    //========= UBICACION ==========
    if (x < min ) {
      x =-50;
    }
    if (x1 < min ) {
      x1 = -50;
    }
    if (x2 < min ) {
      x2 = -50;
    }
    //-----------------------
    if (x > max) {
      x = 100;
    }
    if (x1 > max) {
      x1 = 100;
    }
    if (x2 > max) {
      x2 = 100;
    }
    //============ ANGULO ==========
    a = a + v;
    angulo = radians(a);
  }
  void dibujar() {

    p.beginDraw();
    p.clear();
    p.translate(width/2, height/2);

    switch(c) {
      //==========================
    case 3:
      p.push();
      p.rotate(angulo);
      p.tint(255, b);
      p.image(pin[r[0]], -200+x, 50+x, tx, ty);//Negro
      p.image(pir[r[0]], -200+x1, 50+x1, tx, ty);//Rojo
      p.image(pia[r[0]], -200+x2, 50+x2, tx, ty);//Amarillo
      p.pop();
      //-----------------------
      p.push();
      p.rotate(angulo+an[0]);
      p.tint(255, b);
      p.image(pin[r[1]], -60+x, -180+x, tx, ty);//Negro
      p.image(pir[r[1]], -60+x1, -180+x1, tx, ty);//Rojo
      p.image(pia[r[1]], -60+x2, -180+x2, tx, ty);//Amarillo
      p.pop();
      //-----------------------
      p.push();
      p.rotate(angulo+an[1]);
      p.tint(255, b);
      p.image(pin[r[2]], 100+x, 200+x, tx, ty);//Negro
      p.image(pir[r[2]], 100+x1, 200+x1, tx, ty);//Rojo
      p.image(pia[r[2]], 100+x2, 200+x2, tx, ty);//Amarillo
      p.pop();
      //-----------------------
      break;
      //==========================
    case 4:
      tx = width*0.55;
      ty = height*0.30;

      tx2 = width*0.30;
      ty2 = height*0.35;
      //==========================
      p.push();
      p.rotate(angulo);
      p.tint(255, b);
      p.image(pin[r[0]], -200+x, 50+x, tx, ty);//Negro
      p.image(pir[r[0]], -200+x1, 50+x1, tx, ty);//Rojo
      p.image(pia[r[0]], -200+x2, 50+x2, tx, ty);//Amarillo
      p.pop();
      //-----------------------
      p.push();
      p.rotate(angulo+an[0]);
      p.tint(255, b);
      p.image(pin[r[1]], -60+x, -180+x, tx, ty);//Negro
      p.image(pir[r[1]], -60+x1, -180+x1, tx, ty);//Rojo
      p.image(pia[r[1]], -60+x2, -180+x2, tx, ty);//Amarillo
      p.pop();
      //-----------------------
      p.push();
      p.rotate(angulo+an[1]);
      p.tint(255, b);
      p.image(pin[r[2]], 100+x, 200+x, tx, ty);//Negro
      p.image(pir[r[2]], 100+x1, 200+x1, tx, ty);//Rojo
      p.image(pia[r[2]], 100+x2, 200+x2, tx, ty);//Amarillo
      p.pop();
      //-----------------------
      p.push();
      p.rotate(angulo+an[2]);
      p.tint(255, b);
      p.image(pin[r[3]], 200+x, -40+x, tx, ty);//Negro
      p.image(pir[r[3]], 200+x1, -40+x1, tx, ty);//Rojo
      p.image(pia[r[3]], 200+x2, -40+x2, tx, ty);//Amarillo
      p.pop();
      break;
      //======================
    case 5:
      tx = width*0.55;
      ty = height*0.30;

      tx2 = width*0.25;
      ty2 = height*0.30;
      //==========================

      p.push();
      p.rotate(angulo);
      p.tint(255, b);
      p.image(pin[r[0]], -200+x, 50+x, tx, ty);//Negro
      p.image(pir[r[0]], -200+x1, 50+x1, tx, ty);//Rojo
      p.image(pia[r[0]], -200+x2, 50+x2, tx, ty);//Amarillo
      p.pop();
      //-----------------------
      p.push();
      p.rotate(angulo+an[0]);
      p.tint(255, b);
      p.image(pin[r[1]], -60+x, -180+x, tx, ty);//Negro
      p.image(pir[r[1]], -60+x1, -180+x1, tx, ty);//Rojo
      p.image(pia[r[1]], -60+x2, -180+x2, tx, ty);//Amarillo
      p.pop();
      //-----------------------
      p.push();
      p.rotate(angulo+an[1]);
      p.tint(255, b);
      p.image(pin[r[2]], 100+x, 200+x, tx, ty);//Negro
      p.image(pir[r[2]], 100+x1, 200+x1, tx, ty);//Rojo
      p.image(pia[r[2]], 100+x2, 200+x2, tx, ty);//Amarillo
      p.pop();
      //-----------------------
      p.push();
      p.rotate(angulo+an[2]);
      p.tint(255, b);
      p.image(pin[r[3]], 200+x, -40+x, tx, ty);//Negro
      p.image(pir[r[3]], 200+x1, -40+x1, tx, ty);//Rojo
      p.image(pia[r[3]], 200+x2, -40+x2, tx, ty);//Amarillo
      p.pop();

      p.push();
      p.rotate(angulo+an[4]);
      p.tint(255, b);
      p.image(pin[r[4]], -200+x, -300+x, tx2, ty2);//Negro
      p.image(pir[r[4]], -200+x1, -300+x1, tx2, ty2);//Rojo
      p.image(pia[r[4]], -200+x2, -300+x2, tx2, ty2);//Amarillo
      p.pop();
      //-----------------------
      break;
      //==========================
    }
    p.endDraw();
    image(p, 0, 0);
  }
}

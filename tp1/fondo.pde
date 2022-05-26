class fondo {
  //=======================
  PGraphics marcos;
  int cm;//cantidad de marcos
  int [] r = new int [12];
  //=======================
  color [] c = new color[13];
  //=======================
  String estado, estadoantes;
  //=======================
  int t, y, t1, y1, t2, y2;
  //=======================
  PImage mask;

  fondo() {
    //=======================
    mask = loadImage("textura.PNG");
    //=======================
    estado = "neutro";
    estadoantes = "neutro";
    //=======================
    marcos = createGraphics(width, height);
    marcos.beginDraw();
    marcos.endDraw();
    //=======================
    t = 0;
    y = 0;
    t1 = 0;
    y1 = 0;
    t2 = 0;
    y2 = 0;

    cm = 1;
    //=======================
    noStroke();
    //=======================

    //-----------------------Paleta-----------------------

    c[0] = #b04334; // ladrillo
    c[1] = #c22c23; // rojo c22c23
    c[2] = #ac9465; // marron
    c[3] = 0;       // negro
    c[4] = #889896; // gris_intermedio
    c[5] = #c7e8ed; // celeste
    c[6] = #b2c4b9; // gris_claro_celeste
    c[7] = #9e9e9e; // gris_claro
    c[8] = 255;     // blanco
    c[9] = #daeff8; // blanco_celeste
    c[10] = #79838c; // gris_oscuro
    c[11] = #509997; // verde_agua
    c[12] = #398b84; // verde_agua_2

    //-----------------------Fondo-----------------------

    r[0] = int(random(0, 2));
    r[1] = int(random(10, 12));
    r[2] = int(random(3, 5));
    r[3] = int(random(6, 7));
    r[4] = int(random(8, 10));

    //-----------------------Marcos-----------------------

    r[5] = int(random(0, 3));
    r[6] = int(random(4, 6));
    r[7] = int(random(7, 8));
    r[8] = int(random(20, 40));
    r[9] = int(random(20, 40));
    r[10] = int(random(20, 40));
    r[11] = int(random(20, 40));
  }
  void dibujar() {
    //---------------------------- FONDO ----------------------------
    push();
    rectMode(CORNER);
    fill(c[r[0]]);
    rect(0, 0, width/2, height/3+t);//1

    fill(c[r[1]]);
    rect(width/2, 0, width, height/3+t);//2

    fill(c[r[2]]);
    rect(0, height/3+y1, width/2, height/3+t1);//3

    fill(c[r[3]]);
    rect(width/2, height/3+y1, width, height/3+t1);//4

    fill(c[r[4]]);
    rect(0, height - height/3+y2, width, height - height/3+t2);//5
    pop();
    //---------------------------- MARCOS ----------------------------

    marcos.beginDraw();
    marcos.pushStyle();
    marcos.rectMode(CENTER);
    marcos.noFill();
    //=======================
    switch(cm) {
      //=======================
    case 1:
      marcos.strokeWeight(r[8]);
      marcos.stroke(c[r[5]]);
      marcos.rect(width/2, height/2, width-r[8], height-r[8]);
      break;
      //=======================
    case 2: 
      marcos.strokeWeight(r[8]);
      marcos.stroke(c[r[5]]);
      marcos.rect(width/2, height/2, width-r[8], height-r[8]);
      marcos.strokeWeight(r[9]);
      marcos.stroke(c[r[6]]);
      marcos.rect(width/2, height/2, width-r[9]-r[8], height-r[9]-r[8]);
      break;
      //=======================
    case 3: 
      marcos.strokeWeight(r[8]);
      marcos.stroke(c[r[5]]);
      marcos.rect(width/2, height/2, width-r[8], height-r[8]);
      marcos.strokeWeight(r[9]);
      marcos.stroke(c[r[6]]);
      marcos.rect(width/2, height/2, width-r[9]-r[8], height-r[9]-r[8]);
      marcos.strokeWeight(r[10]);
      marcos.stroke(c[r[7]]);
      marcos.rect(width/2, height/2, width-r[10]-r[9]-r[8], height-r[10]-r[9]-r[8]);
      break;
      //=======================
    case 4: 
      marcos.strokeWeight(r[8]);
      marcos.stroke(c[r[5]]);
      marcos.rect(width/2, height/2, width-r[8], height-r[8]);
      marcos.strokeWeight(r[9]);
      marcos.stroke(c[r[6]]);
      marcos.rect(width/2, height/2, width-r[9]-r[8], height-r[9]-r[8]);
      marcos.strokeWeight(r[10]);
      marcos.stroke(c[r[7]]);
      marcos.rect(width/2, height/2, width-r[10]-r[9]-r[8], height-r[10]-r[9]-r[8]);
      marcos.strokeWeight(r[8]);
      marcos.stroke(c[r[5]]);
      marcos.rect(width/2, height/2, width-r[10]-r[9]-r[8]-r[11], height-r[10]-r[9]-r[8]-r[11]);
      break;
    }
    //=======================
    marcos.popStyle();
    marcos.endDraw();
    image(marcos, 0, 0);
    //=======================
    push();
    tint(255, 25);
    image(mask,0,0,width,height);
    pop();
  }
  /*-----------------------MOUSE-----------------------
   void cambios(boolean abajo, boolean arriba, boolean izq, float vel ) {
   
   if (abajo == true) {
   estado = "abajo";
   } else if (arriba == true) {
   estado = "arriba";
   } else if (izq == true ) {
   estado = "neutro";
   }
   
   if (vel == 0) {
   cm = 1;
   } else if (vel > 10) {
   cm = 2;
   } else if (vel > 20) {
   cm = 3;
   } else if (vel > 30) {
   cm = 4;
   }
   }
   */
  void cambios(boolean sbajo, boolean salto, boolean sonido, float amp ) {
    //=======================
    if (sbajo == true) {
      estado = "abajo";
    } else if (salto == true) {
      estado = "arriba";
    } else if (sonido == false ) {
      estado = "neutro";
    }
    //=======================
    if (amp == 0) {
      cm = 1;
    } else if (amp > 0.01) {
      cm = 2;
    } else if (amp > 0.2) {
      cm = 3;
    } else if (amp > 0.6) {
      cm = 4;
    }
    //=======================
  }
  void actualizar() {

    //------- abajo -------   
    if (estado.equals("abajo")) {
      //=======================
      t++;
      y++;
      t1++;
      y1++;
      t2++;
      y2++;
      //=======================
      if (t > height/3 && y > height/6) {
        t = height/6;
        y = height/6;
      }
      //=======================
      if (t1 > height/6 && y1 > height/6) {
        t1 = height/6;
        y1 = height/6;
      }
      //=======================
      if (t2 > height && y2 > height) {
        t2 = height;
        y2 = height;
      }//=======================
      estadoantes = "abajo";
      //=======================
    } else if (estado.equals("arriba")) {//=======================
      t--;
      y--;
      t1--;
      y1--;
      t2--;
      y2--;
      //=======================
      if (t < -height && y < -height) {
        t=-height;
        y=-height;
      }
      if (t1 < -height/2 && y1 < -height/2) {
        t1=-height/3;
        y1=-height/3;
      }//=======================
      if (t2 < -height/6 && y2 < -height/6) {
        t2=-height/6;
        y2=-height/6;
      }//=======================
      estadoantes = "arriba";
      //=======================
    } else if (estado.equals("neutro")) {
      //=======================
      if (estadoantes.equals("abajo")) {//=======================
        t--;
        y--;
        t1--;
        y1--;
        t2--;
        y2--;
        //=======================
        if (t <= 0 && t1 <= 0 && t2 <= 0 && y <= 0 && y1 <= 0 && y2 <= 0) {
          t = 0;
          y = 0;
          t1 = 0;
          y1 = 0;
          t2 = 0;
          y2 = 0;
        }
        //=======================
      }
      if (estadoantes.equals("arriba")) {//=======================
        //=======================
        t++;
        y++;
        t1++;
        y1++;
        t2++;
        y2++;
        //=======================
        if (t >= 0 && t1 >= 0 && t2 >= 0 && y >= 0 && y1 >= 0 && y2 >= 0) {
          //=======================
          t = 0;
          y = 0;
          t1 = 0;
          y1 = 0;
          t2 = 0;
          y2 = 0;
        }
      }
    }
  }
}

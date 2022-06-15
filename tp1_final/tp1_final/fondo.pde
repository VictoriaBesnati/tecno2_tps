class fondo {
  //============ MARCOS ===========
  PGraphics m;
  int cm;//Cantidad de marcos
  int gm;//Grosor de los marcos
  //============ COLOR ============
  color [] c = new color[13];// paleta de colores
  int [] r = new int [5]; //random de colores
  //============ FONDO ============
  String estado;// estado actual
  String estadoantes;// estado anterior
  //-----------------------
  float to = -250;//t origen
  float td = 0; // t destino
  float td2 = -250; // t destino vuelta
  //-----------------------
  float yo = 0;// y origen
  float yd = -250;// y destino
  float yd2 = 0;// y destino vuelta
  //-----------------------
  float amort = 0.9;// amortiguacion
  //-----------------------
  int cf = 6;
  PImage fondo [] = new PImage [cf];
  int rf;//random del fondo
  //============ TEXTURA ============
  PImage textura;
  fondo() {
    //============ MARCOS ===========
    m = createGraphics(width, height);
    m.beginDraw();
    m.endDraw();
    //-----------------------
    gm = 20;
    cm = 1;
    //============ COLOR ============
    c[0] = #a5bbaf;
    c[1] = #c62e29;
    c[2] = #b8473e;
    c[3] = #e58e38;
    c[4] = #c4bf76;
    c[5] = #48a6ad;
    c[6] = #cd9584;
    c[7] = #e0ebec;
    c[8] = 0;
    c[9] = #a5ae97;
    c[10] = #cdd9d6;
    c[11] = #8c9e99;
    c[12] = #74878e;
    //-----------------------
    r[0] = int(random(0, 9));
    r[1] = int(random(0, 9));
    r[2] = int(random(0, 9));
    r[3] = int(random(0, 9));
    r[4] = int(random(9, 12));
    //============ FONDO ============
    estado = "inicio";
    estadoantes = "inicio";
    //-----------------------
    for (int i = 1; i < cf; i++) {
      fondo [i] = loadImage(i+".png");
    }
    //-----------------------
    rf = int(random(1, cf));

    //============ TEXTURA ============
    textura = loadImage("textura.PNG");
  }

  void cambios(float amp, boolean sonido, boolean grave, boolean agudo) {
    //============ MARCOS ===========
    if (amp == 0) {
      cm = 1;
    } else if (amp > 0.04) {
      cm = 2;
    } else if (amp > 0.2) {
      cm = 3;
    } else if (amp > 0.6) {
      cm = 4;
    }
    //============ FONDO ============
    if (sonido == false) {
      estado = "inicio";
    } 
    if (grave == true) {
      estado = "abajo";
    }
    if (agudo == true) {
      estado = "arriba";
    }
    //===============================
  }

  void dibujar() {
    //============ FONDO ============
    background(c[r[4]]);
    image(fondo[rf], 0, 0+yo, width, height+to);
    //============ MARCOS ===========
    image(m, 0, 0);
    //=========== TEXTURA ===========
    push();
    tint(255, 15);
    image(textura, 0, 0, width, height);
    pop();
  }
  void actualizar() {

    //============ FONDO ============
    if (to < -290 && yo < 1) {
      estadoantes = "inicio";
    }
    if (to <= 0 && yo == 0) {
      estadoantes = "abajo";
    }
    if (to < 1 && yo < -190) {
      estadoantes = "arriba";
    }
    //-----------------------
    if (estado.equals("inicio")) {
    }
    //-----------------------
    if (estado.equals("abajo") && estadoantes.equals("inicio")) {
      to = td*(1-amort)+to*amort; //to = -300 a to = 0
    }
    if (estado.equals("arriba") && estadoantes.equals("inicio")) {
      yo = yd*(1-amort)+yo*amort; //yo = 0 a yo = -400
      to = td*(1-amort)+to*amort; //to = -300 a to = 0
    }
    //-----------------------
    if (estado.equals("inicio") && estadoantes.equals("arriba")) {
      yo = yd2*(1-amort)+yo*amort; //yo = -400 a y2 = 0
      to = td2*(1-amort)+to*amort; //to = 0 a to = -300
    }
    if (estado.equals("abajo") && estadoantes.equals("arriba")) {
      yo = yd2*(1-amort)+yo*amort; // yo -300 a 0
      to = td*(1-amort)+to*amort; //to -300 a 0
    }
    //-----------------------
    if (estado.equals("inicio") && estadoantes.equals("abajo")) {
      to = td2*(1-amort)+to*amort; //to = 0 a to =-300
    }
    if (estado.equals("arriba") && estadoantes.equals("abajo")) {
      yo = yd*(1-amort)+yo*amort; //yo = 0  a yo = -400
    }
    //============ MARCOS ===========
    m.beginDraw();
    m.clear();
    m.rectMode(CENTER);
    m.noFill();
    switch(cm) {
      //-----------------------
    case 1:
      m.pushStyle();
      m.strokeWeight(gm);
      m.stroke(c[r[0]]);
      m.rect(width/2, height/2, width-gm, height-gm);
      m.popStyle();
      //-----------------------
      break;
    case 2:
      m.pushStyle();
      m.strokeWeight(gm);
      m.stroke(c[r[0]]);
      m.rect(width/2, height/2, width-gm, height-gm);
      m.popStyle();
      //-----------------------
      m.pushStyle();
      m.strokeWeight(gm);
      m.stroke(c[r[1]]);
      m.rect(width/2, height/2, width-gm*3, height-gm*3);
      m.popStyle();
      //-----------------------
      break;
    case 3:
      m.pushStyle();
      m.strokeWeight(gm);
      m.stroke(c[r[0]]);
      m.rect(width/2, height/2, width-gm, height-gm);
      m.popStyle();
      //-----------------------
      m.pushStyle();
      m.strokeWeight(gm);
      m.stroke(c[r[1]]);
      m.rect(width/2, height/2, width-gm*3, height-gm*3);
      m.popStyle();
      //-----------------------
      m.pushStyle();
      m.strokeWeight(gm);
      m.stroke(c[r[2]]);
      m.rect(width/2, height/2, width-gm*5, height-gm*5);
      m.popStyle();
      //-----------------------
      break;
    case 4:
      m.pushStyle();
      m.strokeWeight(gm);
      m.stroke(c[r[0]]);
      m.rect(width/2, height/2, width-gm, height-gm);
      m.popStyle();
      //-----------------------
      m.pushStyle();
      m.strokeWeight(gm);
      m.stroke(c[r[1]]);
      m.rect(width/2, height/2, width-gm*3, height-gm*3);
      m.popStyle();
      //-----------------------
      m.pushStyle();
      m.strokeWeight(gm);
      m.stroke(c[r[2]]);
      m.rect(width/2, height/2, width-gm*5, height-gm*5);
      m.popStyle();
      //-----------------------
      m.pushStyle();
      m.strokeWeight(gm);
      m.stroke(c[r[3]]);
      m.rect(width/2, height/2, width-gm*7, height-gm*7);
      m.popStyle();
      //-----------------------
      break;
    }
    m.endDraw();
  }
}

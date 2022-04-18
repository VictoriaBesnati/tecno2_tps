class fondo {
  float tr;// tr tamaño rectangulo
  int cm;//cantidad de marcos //r random
  int [] r = new int [11];
  color [] c = new color[13];

  fondo() {
    
    tr= 0;
    cm = int(random(1, 3));
    
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
    
    r[5] = int(random(0, 8));
    r[6] = int(random(0, 8));
    r[7] = int(random(0, 8));
    r[8] = int(random(20, 40));
    r[9] = int(random(20, 40));
    r[10] = int(random(20, 40));
  }
    void update() {//-----------------------Update-----------------------
    
  }
  void dibujar() {//-----------------------Dibujar-----------------------
    //quad(x1, y1, x2, y2, x3, y3, x4, y4)
    pushStyle();
    noStroke();
    //-----------------------Fondo-----------------------
    
    fill(c[r[0]]);
    quad(0, 0, width/2, 0, width/2, height/3, 0, height/3 ); // 1 arriba izquierda

    fill(c[r[1]]);
    quad(width/2, 0, width, 0, width, height/3, width/2, height/3);//2 arriba derecha

    fill(c[r[2]]);
    quad(width/2, height/3, width, height/3, width, height/1.5, width/2, height/1.5);// 3 abajo derecha

    fill(c[r[3]]);
    quad(0, height/3, width/2, height/3, width/2, height/1.5, 0, height/1.5);//abajo derecha

    fill(c[r[4]]);
    quad(0, height/1.5, width, height/1.5, width, height, 0, height);
    popStyle();

    //-----------------------Marcos-----------------------
    pushStyle();
    rectMode(CENTER);
    noFill();
    
    if (cm == 1) {
      strokeWeight(r[8]);
      stroke(c[r[5]]);
      rect(width/2, height/2, width-r[8], height-r[8]);
    } else if (cm == 2) {
      strokeWeight(r[8]);
      stroke(c[r[5]]);
      rect(width/2, height/2, width-r[8], height-r[8]);
      strokeWeight(r[9]);
      stroke(c[r[6]]);
      rect(width/2, height/2, width-r[9]-r[8], height-r[9]-r[8]);
    } else if (cm == 3) {
      strokeWeight(r[8]);
      stroke(c[r[5]]);
      rect(width/2, height/2, width-r[8], height-r[8]);
      strokeWeight(r[9]);
      stroke(c[r[6]]);
      rect(width/2, height/2, width-r[9]-r[8], height-r[9]-r[8]);
      strokeWeight(r[10]);
      stroke(c[r[7]]);
      rect(width/2, height/2, width-r[10]-r[9]-r[8], height-r[10]-r[9]-r[8]);
    }
    popStyle();
  }

}

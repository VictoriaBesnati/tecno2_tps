class fondo {
  float tr;// tr tamaño rectangulo
  int cm;//cantidad de marcos //r random
  int [] r = new int [6];
  color [] c = new color[9];

  fondo() {
    
    tr= 0;
    cm = int(random(1, 3));

    c[0] = #b04334;
    c[1] = #ac9465;
    c[2] = #c22c23;
    c[3] = #509997;
    c[4] = #79838c;
    c[5] = #889896;
    c[6] = #9e9e9e;
    c[7] = 255;
    c[8] = 0;

    r[0] = int(random(1, 3));
    r[1] = int(random(3, 5));
    r[2] = int(random(2, 8));
    r[3] = int(random(4, 7));
    r[4] = int(random(1, 5));
    //marcos
    r[5] = int(random(1, 5));
  }
  void dibujar() {
    //quad(x1, y1, x2, y2, x3, y3, x4, y4)
    noStroke();

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
  }
  void update() {
  }
}

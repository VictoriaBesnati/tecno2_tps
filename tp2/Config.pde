// Paleta ¿Clase de todas las configuraciones?
//ARRAY DE COLORES TRABAJAR CON HSB POR EL PROYECTOR
//hay q elegir paleta yo elegi esta a al azar
//elegir tipografia

PFont letra;
color a = #FFCBF2;//rosita
color b = #ECBCFD;//violeta rosa
color c2 = #DEAAFF;//violeta
color d = #D8BBFF;//violeta intermedio
color e = #C0FDFF;//celeste

void Titulo(String texto, int x, int y) {

  pushStyle();

  fill(c2);
  textAlign(CENTER, CENTER);
  textSize(200);
  textFont(letra);
  text(texto, x, y);
  fill(b);
  text(texto, x-6, y-6);
  popStyle();
}
void Titulo2() {
}
void texto() {
}
void btn(String texto, int x, int y, int tamx, int tamy) {
  pushStyle();

  rectMode(CENTER);

  fill(b);
  noStroke();
  rect(x+3, y+3, tamx+6, tamy+6, 20);

  fill(a);
  noStroke();
  rect(x, y, tamx, tamy, 20);
  //----------------------------------
  fill(0);

  textAlign(CENTER, CENTER);
  textSize(50);

  text(texto, x-tamx/160, y-tamy/9);
  popStyle();
}
String nombre(FBody body) {
  String nombre = "nada";
  if (body != null) {
    nombre = body.getName();
    if (nombre == null) {
      nombre = "nada";
    }
  }
  return nombre;
}
void vida(int v) {
  push();
  rectMode(CORNER);
  int tamx = 200;
  if (v == 10) {
    tamx = 200;
  }
  if (v == 9) {
    tamx = 180;
  }
  if (v == 8) {
    tamx = 160;
  }
  if (v== 7) {
    tamx = 140;
  }
  if (v == 6) {
    tamx = 120;
  }
  if (v == 5) {
    tamx = 100;
  }
  if (v == 4) {
    tamx = 80;
  }
  if (v == 3) {
    tamx = 50;
  }
  if (v == 2) {
    tamx = 30;
  }
  if (v == 1) {
    tamx = 10;
  }
  fill(255, 0, 0);
  rect(width-tamx-100, 20, tamx, 20);
  pop();
}
void seleccionar(int tamg){
  ellipseMode(CENTER);
      //GATO 1
      if (dist(mouseX, mouseY, width/3, height/2) < tamg/2) {
        if (mousePressed) {
          ID = 1;
          strokeWeight(10);
        }
        strokeWeight(10);
      } else {
        strokeWeight(2);
      }
      push();
      fill(240, 222, 210);
      ellipse(width/3, height/2, tamg, tamg);
      pop();
      //GATO 2
      if (dist(mouseX, mouseY, width/2, height/2) < tamg/2) {
        if (mousePressed) {
          ID = 2;
          strokeWeight(10);
        }
        strokeWeight(10);
      } else {
        strokeWeight(2);
      }
      push();
      fill(182, 150, 112);
      ellipse(width/2, height/2, tamg, tamg);
      pop();
      //GATO 3
      if (dist(mouseX, mouseY, width-350, height/2) < tamg/2) {
        if (mousePressed) {
          ID = 3;
          strokeWeight(10);
        }
      } else {
        strokeWeight(2);
      }
      push();
      fill(113, 110, 108);
      ellipse(width-350, height/2, tamg, tamg);
      pop();
}

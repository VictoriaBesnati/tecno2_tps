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

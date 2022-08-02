// Paleta ¿Clase de todas las configuraciones?
//ARRAY DE COLORES TRABAJAR CON HSB POR EL PROYECTOR
//hay q elegir paleta yo elegi esta a al azar
//elegir tipografia

color a = #9C89B8;//violeta
color b = #F0A6CA;//Rosita
color c = #EFC3E6;//rosa mas clarito
color d = #F0E6EF;//beige
color e = #B8BEDD;//azul feo

void Titulo(String texto, int x, int y) {
  
  pushStyle();
  
  //fill
  
  textAlign(CENTER, CENTER);
  textSize(60);
  
  text(texto, x, y);

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
  rect(x, y, tamx, tamy);
  //----------------------------------
  fill(0);
  
  textAlign(CENTER, CENTER);
  textSize(40);
  
  text(texto, x-tamx/100, y-tamy/6);
  popStyle();
}

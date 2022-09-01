/*
 | TP1 | Tmm2 | FdA | UNLP |
 ------- TP2: Prototipo 1 -------
 Comision: Lisandro | Prof.Lisandro Peralta
 Alumnas: 
 D´angelo Victoria (88529/7)
 Besnati Victoria(88151/1)
 Nayla Aguilar(88106/6)
 ------------------------------
 Video:
 ------------------------------
 */
import fisica.*;
FWorld mundo;
boolean ganar = false;
boolean perder = false;
int ID;
int vida = 10;
juego j;
void setup() {
  size(1024, 768);
  surface.setTitle("--Michiball--");
  size(1024, 768);//1024 768
  Fisica.init(this);

  letra =createFont("Blueberry Days.ttf", 180);
  j = new juego();
}
void draw() {
  j.dibujar();
}
void contactStarted(FContact contacto) {

  FBody body1 = contacto.getBody1();
  FBody body2 = contacto.getBody2();

  String nombre1 = nombre(body1);
  String nombre2 = nombre(body2);
  //-------------------- Colision con caja------------------- Ganar
  if (nombre1.equals("gato") && nombre2.equals("caja")) {
    ganar = true;
  }
  if (nombre1.equals("caja") && nombre2.equals("gato")) {
    ganar = true;
  }
  //-------------------- Colision con Piso ------------------- Perder
  if (nombre1.equals("gato") && nombre2.equals("piso")) {
    perder = true;
  }
  if (nombre1.equals("piso") && nombre2.equals("gato")) {
    perder = true;
  }
  //-------------------- Colision con obstaculos-------------------Menos vida
  if (nombre1.equals("ob") && nombre2.equals("gato")) {
    vida--;
  }
  if (nombre1.equals("gato") && nombre2.equals("ob")) {
    vida--;
  }

  if (vida <= 0) {
    perder = true;
  }
}
void atraer() {
}

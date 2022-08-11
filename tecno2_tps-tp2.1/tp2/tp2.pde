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
juego j;
void setup() {
  surface.setTitle("-- Michiball  --");
  //No se pueden cambiar los tamaños de size en la ejecucion
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

  if (nombre1.equals("gato") && nombre2.equals("caja")) {
    println("GANASTE");
  }
  if (nombre1.equals("caja") && nombre2.equals("gato")) {
    println("GANASTE");
  }
  println(nombre2);
  /*
  if (nombre1.equals("gato") && nombre2.equals("piso")){
   println("PERDISTE");
   }
   if (nombre1.equals("piso") && nombre2.equals("gato")){
   println("PERDISTE");
   }
   */
}

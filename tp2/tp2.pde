/*
 | TP1 | Tmm2 | FdA | UNLP |
 ------- TP2: Prototipo -------
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
juego j;
void setup() {
  surface.setTitle("-- Michiball  --");
  //No se pueden cambiar los tamaños de size en la ejecucion
  size(600, 600);
  Fisica.init(this);

  j = new juego();
}
void draw() {

  j.dibujar();
}

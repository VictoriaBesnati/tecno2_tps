import oscP5.*;
/*
 | TP1 | Tmm2 | FdA | UNLP |
 ------- TP1 Etapa Evaluativa -------
 Comision: Lisandro | Prof.Lisandro Peralta
 Alumnas: D´angelo Victoria (88529/7) y Besnati Victoria(88151/1)
 Video:
 */
cuadro c;
void setup() {
  size(800, 800);
  surface.setTitle(" -- La obra perdida de Ciria  -- ");
  c = new cuadro();
}

void draw() {
  c.dibujar();
}

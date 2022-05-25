import oscP5.*;

/*
 | TP1 | Tmm2 | FdA | UNLP |
 ------- TP1 Etapa 2: Prototipo -------
 Comision: Lisandro | Prof.Lisandro Peralta
 Alumnas: D´angelo Victoria (88529/7) y Besnati Victoria(88151/1)
 Video:
*/

momento m;
void setup(){
  //frameRate(5);
  size(600,600);
  surface.setResizable(true);
  surface.setTitle("-- La obra perdida de Ciria  --");
  background(0);
  m = new momento();
}

void draw(){
  m.dibujar();
}

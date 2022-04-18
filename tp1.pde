/*
 | TP1 | Tmm2 | FdA | UNLP |
 ------- TP1 Etapa 2: Prototipo -------
 Comision: Lisandro | Prof.Lisandro Peralta
 Alumnas: D´angelo Victoria (88529/7) y Besnati Victoria(88151/1)
 Video:
*/


fondo f;
void setup(){
  
  size(900,900);
  background(0);
  
  f = new fondo();
}

void draw(){
  f.dibujar()  ;
}

class gestor {
  //=======================
  mov m;
  //=======================
  boolean semovia;
  boolean semueve;
  boolean arriba;
  boolean abajo;
  boolean izq;
  boolean der;
  //=======================
  float sensibilidad;

  gestor() {
    //=======================
    m = new mov();
    //=======================
    sensibilidad = 10;
    //=======================
  }
  void dibujar() {
    //=======================
    m.todo(mouseX, mouseY);
    //=======================
    semueve = false;
    arriba = false;
    abajo = false;
    izq = false;
    der = false;
    //=======================
    if (m.dvel()>sensibilidad && m.dvel()<150) {
      semueve = true;
    }
    if (semueve && !semovia) {

      arriba = m.ddy() <-sensibilidad? true:false;
      abajo = m.ddy() >sensibilidad? true:false;
      der = m.ddx() >sensibilidad? true:false;
      izq = m.ddx() <-sensibilidad? true:false;
    }
    semovia = semueve;
  }
  //=======================
  float dvel() {
    return m.dvel();
  }
  float dpolar() {
    return m.dp();
  }
  //=======================
}

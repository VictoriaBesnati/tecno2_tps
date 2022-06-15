class cuadro {
  //=======================  
  voz v;
  //-----------------------
  fondo f;
  //-----------------------
  pinceladas p;
  //=======================  
  cuadro() {
    //=======================  
    v = new voz();
    //-----------------------
    f = new fondo();
    //-----------------------
    p = new pinceladas();
    //=======================
  }
  void dibujar() {
    //=======================  
    v.todo();
    //-----------------------
    f.cambios(v.amp(), v.sonido, v.grave, v.agudo);
    f.actualizar();
    f.dibujar();
    //-----------------------
    p.cambios(v.grave, v.agudo, v.sonido, v.cambioar, v.cambioab);
    p.actualizar();
    p.dibujar();
    //=======================
    println(" | TP1 | Tmm2 | FdA | UNLP");
    println(" ------- TP1 Etapa Evaluativa -------");
    println(" Comision: Lisandro | Prof.Lisandro Peralta");
    println(" Alumnas: Victoria's D´Angelo (88529/7) y Besnati(88151/1)");
  }
}

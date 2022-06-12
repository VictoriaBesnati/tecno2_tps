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
    p.cambios(v.grave, v.agudo, v.sonido, v.pitch(), v.cambioar, v.cambioab);
    p.actualizar();
    p.dibujar();
    //=======================
  }
}

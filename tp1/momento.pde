class momento {
  //=======================  
  voz v;
  fondo f;
  pincelada p;
  gestor g;
  //=======================
  momento() {
    //=======================
    f = new fondo();
    p = new pincelada();
    g = new gestor();
    v = new voz();
    //=======================
  }
  void dibujar() {
    //g.dibujar();
    //=======================
    v.todo();
    //=======================
    f.cambios(v.volbajo, v.volalto, v.sonido, v.amp());
    f.actualizar();
    f.dibujar();
    //=======================
    p.cambios(v.grave, v.agudo, v.sonido, v.pitch());
    p.dibujar();
    //=======================
  }
}

class voz {
  OscP5 osc;

  GestorSenial ga;
  GestorSenial gp;
  GestorSenial gb;

  //=======================
  //-------AMPLITUD--------
  float amp = 0.0;
  float mina = 40;
  float maxa = 100;
  float amorta = 0.9;
  //=======================
  //--------PITCH---------
  float pitch = 0.0;
  float minp = 60;
  float maxp = 90;
  float amortp = 0.9;
  //=======================
  //-------BRILLO--------
  float brillo = 0.0;
  float minb = 100;
  float maxb = 700;
  float amortb = 0.5;
  //=======================
  boolean sonido = false;
  //-------AMPLITUD--------
  boolean volalto = false;
  boolean volbajo = false;
  //--------PITCH---------
  boolean agudo = false;
  boolean grave = false;
  //--------DERIVADA P---------
  boolean cambioar = false;//arriba
  boolean cambioab = false;//abajo
  //-------BRILLO--------
  /*
  boolean muchob = false;
   boolean pocob = false;
   */
  voz() {

    osc = new OscP5(this, 12345);
    ga = new GestorSenial(mina, maxa, amorta);
    gp = new GestorSenial(minp, maxp, amortp);
    gb = new GestorSenial(minb, maxb, amortb);
  }
  void oscEvent( OscMessage m ) {

    if (m.addrPattern().equals("/amp")) {
      amp = m.get(0).floatValue();
      //println(ga.filtradoNorm());
    }
    if (m.addrPattern().equals("/pitch")) {
      pitch = m.get(0).floatValue();
    }
    if (m.addrPattern().equals("/brillo")) {
      brillo = m.get(0).floatValue();
    }
    /*
    if (m.addrPattern().equals("/ruido")) {
     ruido = m.get(0).floatValue();
     println(ruido);
     }
     */
  }
  void todo() {

    ga.actualizar(amp);
    gp.actualizar(pitch);
    gb.actualizar(brillo);

    sonido = false;
    volalto = false;
    volbajo = false;
    grave = false;
    agudo = false;
    cambioar = false;
    cambioab = false;

    //muchob = false;


    if (ga.filtradoNorm()> 0) {
      sonido = true;
    } else {
      sonido = false;
    }
    if (ga.filtradoNorm()> 0.5) {
      volalto = true;
    }
    if (ga.filtradoNorm() < 0.5 && ga.filtradoNorm() > 0 ) {
      volbajo = true;
    }
    if (gp.filtradoNorm() < 0.1) {
      grave = true;
    }
    if (gp.filtradoNorm() > 0.5) {
      agudo = true;
    }
    //Si hay sonido y...
    if (gp.derivadaNorm() < -0.8) {
      cambioab = true;
    }
    if (gp.derivadaNorm() > 0.8) {
      cambioar = true;
    }
  }
  float amp() {
    return ga.filtradoNorm();
  }  
  float pitch() {
    return gp.filtradoNorm();
  }
  float brillo() {
    return gb.filtradoNorm();
  }
}

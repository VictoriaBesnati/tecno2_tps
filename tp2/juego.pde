class juego {
  //------------
  String estado;
  //------------
  gatito g;
  obstaculo o;
  caja c;
  Powerup p;

  juego() {
    //------------
    mundo = new FWorld();
    mundo.setEdges();
    mundo.setEdges(d);
    //------------
    g = new gatito();
    o = new obstaculo();
    c = new caja();
    p = new Powerup();
    //------------
    estado = "inicio";
    //------------
  }
  void dibujar() {
    //------------
    if (estado.equals("inicio")) {

      background(e);
      g.reiniciar();
      c.reiniciar();
      o.reiniciar();
      ID = 0;

      perder = false;
      ganar = false;

      Titulo("MICHIBALL", width/2, height/3-50);
      int tamx = 200, tamy = 100;

      btn("Jugar", width/2, height-200, tamx, tamy);
      if (mouseX > width/2 - tamx/2 && mouseX < width/2 + tamx/2) {
        if (mouseY > height-200 - tamy/2 && mouseY < height-200 + tamy/2) {
          if (mousePressed) {
            estado = "seleccionar";
          }
        }
      }
    }
    if (estado.equals("seleccionar")) {
      background(b);
      seleccionar(100);
      if (ID == 1 || ID == 2 ||ID == 3 ) {
        estado = "jugar";
      }
      g.setgatito();
      //------------
    }
    //-----------------------------------------------------------------------------
    if (estado.equals("jugar")) {
      background(a);
      c.atraer();
      g.atraer();
      g.powerup(c.cx(), c.cy(), o.ox(), o.oy());
      p.borrar();

      mundo.step();
      mundo.draw();

      vida(vida);
      if ( ganar == true) {
        estado = "ganar";
      }
      if ( perder == true) {
        estado = "perder";
      }
    }
    //-----------------------------------------------------------------------------
    if (estado.equals("ganar")) {
      ID = 0;
      nro = 0;
      vida = 10;
      background(0);
      Titulo("GANASTE", width/2, height/3);
      int tamx = 300, tamy = 100;
      btn("Continuar", width/2, height-100, tamx, tamy);
      if (mouseX > width/2 - tamx/2 && mouseX < width/2 + tamx/2) {
        if (mouseY > height-100 - tamy/2 && mouseY < height-100 + tamy/2) {
          if (mousePressed) {
            estado = "jugar";
            ganar = false;
            g.reiniciar();
            c.reiniciar();
            o.reiniciar();
            p.reiniciar();
            o.aggobjeto();
          }
        }
      }
    }
    //-----------------------------------------------------------------------------
    if (estado.equals("perder")) {
      background(0);
      nro = 0;
      ID = 0;

      vida = 10;

      Titulo("PERDISTE", width/2, height/3);
      int tamx = 400, tamy = 100;
      btn("Volver al inicio", width/2, height-100, tamx, tamy);
      if (mouseX > width/2 - tamx/2 && mouseX < width/2 + tamx/2) {
        if (mouseY > height-100 - tamy/2 && mouseY < height-100 + tamy/2) {
          if (mousePressed) {
            g.reiniciar();
            c.reiniciar();
            o.reiniciar();
            p.reiniciar();
            estado = "inicio";
            perder = false;
          }
        }
      }
    }
    //-----------------------------------------------------------------------------
  }
}

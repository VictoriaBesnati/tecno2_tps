class juego {
  //------------
  String estado;
  //------------
  gatito g;
  obstaculo o;
  caja c;

  juego() {
    //------------
    mundo = new FWorld();
    mundo.setEdges();
    mundo.setEdges(d);
    //------------
    g = new gatito();
    o = new obstaculo();
    c = new caja();
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
      g.setgatito();
      //------------
      int tamx = 200, tamy = 100;
      btn("Jugar", width/2, height-100, tamx, tamy);
      if (mouseX > width/2 - tamx/2 && mouseX < width/2 + tamx/2) {
        if (mouseY > height-100 - tamy/2 && mouseY < height-100 + tamy/2) {
          if (mousePressed) {
            estado = "jugar";
          }
        }
      }
    }
    //-----------------------------------------------------------------------------
    if (estado.equals("jugar")) {
      background(a);
      c.atraer();
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
      background(0);
      g.reiniciar();
      c.reiniciar();
      o.reiniciar();
      Titulo("GANASTE", width/2, height/3);
      int tamx = 300, tamy = 100;
      btn("Continuar", width/2, height-100, tamx, tamy);
      if (mouseX > width/2 - tamx/2 && mouseX < width/2 + tamx/2) {
        if (mouseY > height-100 - tamy/2 && mouseY < height-100 + tamy/2) {
          if (mousePressed) {
            estado = "jugar";
            ganar = false;
            o.aggobjeto();
          }
        }
      }
    }
    //-----------------------------------------------------------------------------
    if (estado.equals("perder")) {
      background(0);
      
      g.reiniciar();
      c.reiniciar();
      o.reiniciar();
      vida = 10;

      Titulo("PERDISTE", width/2, height/3);
      int tamx = 400, tamy = 100;
      btn("Volver al inicio", width/2, height-100, tamx, tamy);
      if (mouseX > width/2 - tamx/2 && mouseX < width/2 + tamx/2) {
        if (mouseY > height-100 - tamy/2 && mouseY < height-100 + tamy/2) {
          if (mousePressed) {
            estado = "inicio";
            perder = false;
          }
        }
      }
    }
    //-----------------------------------------------------------------------------
  }
}

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
      perder = false;
      ganar = false;
      Titulo("MICHIBALL", width/2, height/3-50);
      btn("Jugar", width/2, height-200, 200, 100);
      if (mouseX > width/2 - 200/2 && mouseX < width/2 + 200/2) {
        if (mouseY > height-200 - 100/2 && mouseY < height-200 + 100/2) {
          if (mousePressed) {
            estado = "jugar";
          }
        }
      }
    }
    if (estado.equals("animacion")) {
      background(b);
    }
    if (estado.equals("seleccionar")) {
      background(b);
    }
    //------------
    if (estado.equals("jugar")) {
      background(a);
      //------------
      mundo.step();
      mundo.draw();

      if ( ganar == true) {
        estado = "ganar";
      }
      if ( perder == true) {
        estado = "perder";
      }
    }
    if (estado.equals("ganar")) {
      background(0);
      Titulo("GANASTE", width/2, height/3);
    }
    if (estado.equals("perder")) {
      background(0);
      Titulo("PERDISTE", width/2, height/3);
        }
    //------------
  }
}

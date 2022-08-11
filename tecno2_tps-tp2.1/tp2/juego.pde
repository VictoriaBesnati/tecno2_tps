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
      background(a);
      Titulo("MICHIBALL", width/2, height/3-50);
      btn("Jugar", width/2, height-200, 200, 100);
      //(mouseX> x1 - tamx1/2 && mouseX < x1 + tamx1/2 && mouseY > y1 - tamy1/2 && mouseY < y1 + tamy1/2)
      if (mouseX > width/2 - 200/2 && mouseX < width/2 + 200/2) {
        if (mouseY > height-200 - 100/2 && mouseY < height-200 + 100/2) {
          if (mousePressed) {

            estado = "jugar";
          }
        }
      }
    }
    //------------
    if (estado.equals("jugar")) {
      background(255);
      //------------
      mundo.step();
      mundo.draw();
      o.setStart(100, 200);

      if ( ganar == true ) {
        estado = "ganar";
      }
    }
    if (estado.equals("ganar")) {
      background(0);
      Titulo("GANASTE", width/2, height/3);
    }
    //------------
  }
}

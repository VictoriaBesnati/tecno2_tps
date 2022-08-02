
class juego {
  //------------
  String estado;
  //------------
  gatito g;
  obstaculo o;

  juego() {
    //------------
    mundo = new FWorld();
    mundo.setEdges();
    //------------
    g = new gatito();
    o = new obstaculo();
    //------------
    estado = "inicio";
    //------------
  }
  void dibujar() {
    //------------
    if (estado.equals("inicio")) {
      background(a);
      Titulo("MICHIBALL", width/2, height/3);
      btn("Jugar", width/2, height-200, 150, 80);
      if (mousePressed) {
        estado = "jugar";
      }
    }
    //------------
    if (estado.equals("jugar")) {
      background(255);
      //------------
      mundo.step();
      mundo.draw();
      o.variables();
      o.dibujar();
    }
    //------------
  }
}

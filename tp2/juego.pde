class juego {
  //------------
  String estado;
  PImage [] fondos = new PImage [3];  
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
    for (int i = 0; i<fondos.length; i++) {
      fondos[i]= loadImage("fondo"+i+".png");
    }
  }
  void dibujar() {
    //------------
    if (estado.equals("inicio")) {

      image(fondos[0],0, 0, width, height);
      g.reiniciar();
      c.reiniciar();
      o.reiniciar();
      ID = 0;

      perder = false;
      ganar = false;

      int tamx = 200, tamy = 100;

      btn("Jugar", width/2, height-100, tamx, tamy);
      if (mouseX > width/2 - tamx/2 && mouseX < width/2 + tamx/2) {
        if (mouseY > height-100 - tamy/2 && mouseY < height-100 + tamy/2) {
          if (mousePressed) {
            estado = "seleccionar";
          }
        }
      }
    }
    if (estado.equals("seleccionar")) {
      background(b);
      Titulo("Elegi tu gatito!", width/2, height/6);
      seleccionar(350);
      if (ID == 1 || ID == 2 ||ID == 3 ) {
        estado = "jugar";
      }
      g.setgatito();
      //------------
    }
    //-----------------------------------------------------------------------------
    if (estado.equals("jugar")) {
      background(e);
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
      image(fondos[1],0, 0, width, height);
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
      image(fondos[2],0, 0, width, height);
      nro = 0;
      ID = 0;

      vida = 10;
      int tamx = 500, tamy = 100;
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

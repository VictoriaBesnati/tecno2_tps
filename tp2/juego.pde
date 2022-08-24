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
    if (estado.equals("animacion")) {
      background(b);
    }
    if (estado.equals("seleccionar")) {
      background(b);
      ellipseMode(CENTER);
      int tamg = 100;
      //GATO 1
      if (dist(mouseX, mouseY, width/3, height/2) < tamg/2) {
        if (mousePressed) {
          ID = 1;
          strokeWeight(10);
        }
        strokeWeight(10);
      } else {
        strokeWeight(2);
      }
      push();
      fill(240,222,210);
      ellipse(width/3, height/2, tamg, tamg);
      pop();
      //GATO 2
      if (dist(mouseX, mouseY, width/2, height/2) < tamg/2) {
        if (mousePressed) {
          ID = 2;
          strokeWeight(10);
        }
        strokeWeight(10);
      } else {
        strokeWeight(2);
      }
      push();
      fill(182,150,112);
      ellipse(width/2, height/2, tamg, tamg);
      pop();
      //GATO 3
      if (dist(mouseX, mouseY, width-350, height/2) < tamg/2) {
        if (mousePressed) {
          ID = 3;
          strokeWeight(10);
        }
      } else {
        strokeWeight(2);
      }
      push();
      fill(113,110,108);
      ellipse(width-350, height/2, tamg, tamg);
      pop();
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
    //------------
    if (estado.equals("jugar")) {
      c.iniciar();
      background(a);
      //------------
      mundo.step();
      mundo.draw();
      if(mousePressed){
        c.atraer();
      }
      push();
      rectMode(CORNER);
      int tamx = 200;
      
      if(vida == 10){
        tamx = 200;
      }
      if(vida == 9){
        tamx = 180;
      }
      if(vida == 8){
        tamx = 160;
      }
      if(vida == 7){
        tamx = 140;
      }
      if(vida == 6){
        tamx = 120;
      }
      if(vida == 5){
        tamx = 100;
      }
      if(vida == 4){
        tamx = 80;
      }
      if(vida == 3){
        tamx = 50;
      }
      if(vida == 2){
        tamx = 30;
      }
      if(vida == 1){
        tamx = 10;
      }
      
      fill(255,0,0);
      rect(width-tamx-100,20,tamx,20);
      pop();
      if ( ganar == true) {
        estado = "ganar";
      }
      if ( perder == true) {
        estado = "perder";
      }
    }
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
          }
        }
      }
    }
    if (estado.equals("perder")) {
      
      g.reiniciar();
      c.reiniciar();
      o.reiniciar();
      vida = 10;
      
      background(0);
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
    //------------
  }
}

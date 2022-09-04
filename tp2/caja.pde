class caja {

  FBox caja;
  FBox piso;

  int tam = 100;
  float dx;
  float s;

  caja() {

    iniciar();
    mundo.add(piso);
    mundo.add(caja);
  }
  void iniciar() {
    caja = new FBox(tam, tam);
    caja.setName("caja");
    caja.setPosition(width-tam, height-tam);
    caja.setStrokeWeight(5);
    caja.setStroke(83, 69, 51);
    caja.setFill(182, 150, 112);


    piso = new FBox(width-2, 10);
    piso.setPosition(width/2, height-20);
    piso.setName("piso");
    piso.setStatic(true);
    piso.setNoStroke();
    piso.setFill(198, 46, 41);

    piso.setGrabbable(false);
    caja.setGrabbable(false);
  }
  void reiniciar() {

    caja.setName("caja");
    caja.setPosition(width-tam, height-tam);
    caja.setStrokeWeight(5);
    caja.setStroke(83, 69, 51);
    caja.setFill(182, 150, 112);

    piso.setPosition(width/2, height-20);
    piso.setName("piso");
    piso.setNoStroke();
    piso.setFill(198, 46, 41);
  }
  void atraer() {
    s = second();
     if( s == 9 || s == 10 ||s == 19 ||s == 20 ||s == 29 ||s == 30 ||s == 39 ||s == 40 ||s == 49 ||s == 50 ||s == 58 || s == 59){
      pushStyle();
      noFill();
      strokeWeight(20);
      stroke(255,128,0);
      rect(0, 0, width, height);
      popStyle();
    }
    if (s == 10 || s == 20 || s == 30 ||s == 40 || s == 50 || s == 59) {
      //float l = lerp(0, width, 0.5);
      float l = random(100, 600);
      dx = l - caja.getX();
      caja.addForce(dx*100, 0);
    }
  }
  float cx (){
    float cx;
    cx = caja.getX();
    return cx;
  }
  float cy (){
    float cy;
    cy = caja.getY();
    return cy;
  }
}

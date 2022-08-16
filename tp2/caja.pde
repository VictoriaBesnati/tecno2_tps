class caja {
  FBox caja;
  FBox piso;
  int tam = 100;
  caja() {
    caja = new FBox(tam, tam);
    caja.setName("caja");
    caja.setPosition(width-tam, height-tam);
    caja.setStrokeWeight(5);
    caja.setStroke(83, 69, 51);
    caja.setFill(182, 150, 112);


    piso = new FBox(width-2, 10);
    piso.setPosition(width/2, height-20);
    piso.setName("piso");
    piso.setNoStroke();
    piso.setFill(198,46,41);
    
    piso.setGrabbable(false);
    caja.setGrabbable(false);
    
    mundo.add(piso);
    mundo.add(caja);
  }
  void variables() {
  }
  void dibujar() {
  }
}

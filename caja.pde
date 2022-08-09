class caja {
  FBox caja;
  FBox piso;
  int tam = 100;
  caja() {
    caja = new FBox(tam,tam);
    caja.setName("caja");
    caja.setPosition(width-tam, height-tam);
    mundo.add(caja);

    piso = new FBox(width-2,5);
    piso.setPosition(width/2, height-20);
    piso.setName("piso");
    mundo.add(piso);

  }
  void variables() {
  }
  void dibujar() {
  }
}

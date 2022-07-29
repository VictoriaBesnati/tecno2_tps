class obstaculo {

  FLine plataforma0;
  FLine plataforma1;
  FLine plataforma2;
  
  float x0 = 100, y0 = 200, x1= 500, y1= 200;

  obstaculo() {
    FLine plataforma0 = new FLine(x0,y0,x1,y1);
    plataforma0.setStroke(255,0,0);
    plataforma0.setStrokeWeight(20);
    plataforma0.setStatic(true);
    plataforma0.setGrabbable(true);
    mundo.add(plataforma0);
  }
  void variables() {
  }
  void dibujar() {
   
    
  }
}

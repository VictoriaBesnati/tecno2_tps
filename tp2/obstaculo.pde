class obstaculo {
  /*
  FLine p1;
   FLine p2;
   FLine p3;
   */
  FBox p1;
  FBox p2;
  FBox p3;
  float x1 = 300, y1 = 150;
  float x2, y2;
  float x3, y3;

  obstaculo() {
    p1 = new FBox(400, 10);
    p1.setPosition(300, 150);
    p1.setRotation(radians(5));
    p1.setStatic(true);
    p1.setNoStroke();
    p1.setFill(222, 170, 255);
    
    p2 = new FBox(400, 10);
    p2.setPosition(800, 300);
    p2.setRotation(radians(-5));
    p2.setStatic(true);
    p2.setNoStroke();
    p2.setFill(222, 170, 255);
    
    p3 = new FBox(400, 10);
    p3.setPosition(400, 550);
    p3.setRotation(radians(5));
    p3.setStatic(true);
    p3.setNoStroke();
    p3.setFill(222, 170, 255);
    
    
    mundo.add(p1);
    mundo.add(p2);
    mundo.add(p3);
  }
}

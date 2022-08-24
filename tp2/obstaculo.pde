class obstaculo {

  FBox p1;
  FBox p2;
  FBox p3;

  FBox o1;
  FBox o2;
  FBox o3;
  FBox o4;
  FBox o5;
  FBox o6;
  FBox o7;
  FBox o8;
  FBox o9;
  FBox o10;

  float x1 = 300, y1 = 150;
  float x2, y2;
  float x3, y3;

  obstaculo() {
    iniciar();
    agg();
  }
  void iniciar() {
    //--------------------------------------------
    p1 = new FBox(400, 50);
    p1.setPosition(300, 150);
    p1.setRotation(radians(5));
    p1.setStatic(true);
    p1.setNoStroke();
    p1.setFill(222, 170, 255);

    p2 = new FBox(400, 50);
    p2.setPosition(800, 300);
    p2.setRotation(radians(-5));
    p2.setStatic(true);
    p2.setNoStroke();
    p2.setFill(222, 170, 255);

    p3 = new FBox(400, 50);
    p3.setPosition(400, 550);
    p3.setRotation(radians(5));
    p3.setStatic(true);
    p3.setNoStroke();
    p3.setFill(222, 170, 255);

    //--------------------------------------------
    o1 = new FBox(100, 100);
    o1.setName("ob");
    o1.setPosition(600, 0);
    o1.setStatic(true);
    o1.setGrabbable(false);
    o1.setFill(0);

    o2 = new FBox(100, 100);
    o2.setName("ob");
    o2.setPosition(width/2, height/2);
    o2.setStatic(true);
    o2.setGrabbable(false);
    o2.setFill(0);

    o3 = new FBox(100, 100);
    o3.setName("ob");
    o3.setPosition(random(0, width/2), random(0, height/2));
    o3.setStatic(true);
    o3.setGrabbable(false);
    o3.setFill(0);

    o4 = new FBox(100, 100);
    o4.setName("ob");
    o4.setPosition(random(0, width), random(0, height));
    o4.setStatic(true);
    o4.setGrabbable(false);
    o4.setFill(0);

    o5 = new FBox(100, 100);
    o5.setName("ob");
    o5.setPosition(random(0, width), random(0, height/2));
    o5.setStatic(true);
    o5.setGrabbable(false);
    o5.setFill(0);

    if (nivel >= 2) {
      o6 = new FBox(100, 100);
      o6.setName("ob");
      o6.setPosition(random(0, width), random(0, height/2));
      o6.setStatic(true);
      o6.setGrabbable(false);
      o6.setFill(0);
    }
    if (nivel >= 3) {
      o7 = new FBox(100, 100);
      o7.setName("ob");
      o7.setPosition(random(0, width), random(0, height/2));
      o7.setStatic(true);
      o7.setGrabbable(false);
      o7.setFill(0);
    }
    if (nivel >= 4) {

      o8 = new FBox(100, 100);
      o8.setName("ob");
      o8.setPosition(random(0, width), random(0, height/2));
      o8.setStatic(true);
      o8.setGrabbable(false);
      o8.setFill(0);
    }
    if (nivel >= 5) {
      o9 = new FBox(100, 100);
      o9.setName("ob");
      o9.setPosition(random(0, width), random(0, height/2));
      o9.setStatic(true);
      o9.setGrabbable(false);
      o9.setFill(0);
    }
    if (nivel >= 6) {
      o10 = new FBox(100, 100);
      o10.setName("ob");
      o10.setPosition(random(0, width), random(0, height/2));
      o10.setStatic(true);
      o10.setGrabbable(false);
      o10.setFill(0);
    }
  }
  void reiniciar() {

    p1.setPosition(300, 150);
    p1.setRotation(radians(5));
    p1.setStatic(true);
    p1.setNoStroke();
    p1.setFill(222, 170, 255);

    p2.setPosition(800, 300);
    p2.setRotation(radians(-5));
    p2.setStatic(true);
    p2.setNoStroke();
    p2.setFill(222, 170, 255);

    p3.setPosition(400, 550);
    p3.setRotation(radians(5));
    p3.setStatic(true);
    p3.setNoStroke();
    p3.setFill(222, 170, 255);

    //--------------------------------------------
    o1.setPosition(600, 0);
    o1.setName("ob");
    o1.setStatic(true);
    o1.setGrabbable(false);
    o1.setFill(0);

    o2.setPosition(width/2, height/2);
    o2.setName("ob");
    o2.setStatic(true);
    o2.setGrabbable(false);
    o2.setFill(0);

    o3.setPosition(random(0, width/2), random(0, height/2));
    o3.setName("ob");
    o3.setStatic(true);
    o3.setGrabbable(false);
    o3.setFill(0);

    o4.setPosition(random(0, width), random(0, height));
    o4.setName("ob");
    o4.setStatic(true);
    o4.setGrabbable(false);
    o4.setFill(0);

    o5.setPosition(random(0, width), random(0, height/2));
    o5.setName("ob");
    o5.setStatic(true);
    o5.setGrabbable(false);
    o5.setFill(0);

    if (nivel >= 2) {
      o6 = new FBox(100, 100);
      o6.setName("ob");
      o6.setPosition(random(0, width), random(0, height/2));
      o6.setStatic(true);
      o6.setGrabbable(false);
      o6.setFill(0);
    }
    if (nivel >= 3) {
      o7 = new FBox(100, 100);
      o7.setName("ob");
      o7.setPosition(random(0, width), random(0, height/2));
      o7.setStatic(true);
      o7.setGrabbable(false);
      o7.setFill(0);
    }
    if (nivel >= 4) {

      o8 = new FBox(100, 100);
      o8.setName("ob");
      o8.setPosition(random(0, width), random(0, height/2));
      o8.setStatic(true);
      o8.setGrabbable(false);
      o8.setFill(0);
    }
    if (nivel >= 5) {
      o9 = new FBox(100, 100);
      o9.setName("ob");
      o9.setPosition(random(0, width), random(0, height/2));
      o9.setStatic(true);
      o9.setGrabbable(false);
      o9.setFill(0);
    }
    if (nivel >= 6) {
      o10 = new FBox(100, 100);
      o10.setName("ob");
      o10.setPosition(random(0, width), random(0, height/2));
      o10.setStatic(true);
      o10.setGrabbable(false);
      o10.setFill(0);
    }
    println(nivel);
  }
  void agg() {
    mundo.add(p1);
    mundo.add(p2);
    mundo.add(p3);

    mundo.add(o1);
    mundo.add(o2);
    mundo.add(o3);
    mundo.add(o4);
    mundo.add(o5);
    mundo.add(o6);
    mundo.add(o7);
    mundo.add(o8);
    mundo.add(o9);
    mundo.add(o10);
  }
}

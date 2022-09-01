class gatito {
  FCircle gatu;

  int tam = 80;
  float Vel = 50;

  gatito() {   
    iniciar();
    mundo.add(gatu);
  }
  void setgatito() {

    //gato1 - Elastico
    if (ID == 1) {
      gatu.setFill(240, 222, 210);
      gatu.setRestitution(1.5);
      gatu.setDensity(0.2);
      gatu.setFriction(1.5);

      //limitar velocidad
      float velocidad = dist(0, 0, gatu.getVelocityX(), gatu.getVelocityY());      
      if (velocidad>Vel) {       
        float angulo = atan2(gatu.getVelocityY(), gatu.getVelocityX());
        float vx = Vel*cos(angulo);
        float vy = Vel*sin(angulo);
        gatu.setVelocity(vx, vy);
      }
      println(gatu.getVelocityX());
    }
    //gato2 - Obeso
    if (ID == 2) {
      gatu.setFill(182, 150, 112);
      gatu.setRestitution(0.5);
      gatu.setDensity(1.5);
      gatu.setFriction(0.2);
    }
    //gato3 - Volador
    if (ID == 3) {
      gatu.setFill(113, 110, 108);
      gatu.setRestitution(1);
      gatu.setDensity(0.1);
      gatu.setFriction(0);
    }
  }
  void iniciar() {
    
    gatu = new FCircle(tam);
    gatu.setPosition(100, 0);
    gatu.setName("gato");
    gatu.setGrabbable(false);
    gatu.setVelocity(400, 0); 
    gatu.setNoStroke();
    
  }
  void reiniciar() {
    
    gatu.setPosition(100, 0);
    gatu.setName("gato");
    gatu.setGrabbable(false);
    gatu.setVelocity(400, 0); 
    gatu.setNoStroke();
    
  }
}

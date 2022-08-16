class gatito {

  FCircle gatu;
  int tam = 80;
  int tam2 = 100;
  int ID = 3;

  gatito() {

    FCircle gatu = new FCircle(tam);
    gatu.setPosition(100, 0);
    gatu.setName("gato");
    gatu.setGrabbable(false);
    gatu.setVelocity(400, 0);
    
    if (ID == 1) {
      //gato1 - Elastico
      gatu.setRestitution(1.5);
      gatu.setDensity(0.2);
      gatu.setFriction(1.5);
    }
    //gato2 - Obeso
    if (ID == 2) {
      gatu.setRestitution(0.5);
      gatu.setDensity(1.5);
      gatu.setFriction(0.2);
    }
    //gato3 - Volador
    if (ID == 3) {
      gatu.setRestitution(1);
      gatu.setDensity(0.1);
      gatu.setFriction(0);
    }
    mundo.add(gatu);
  }
}
// Tarjetas de gatitos
/*

 */

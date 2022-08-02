class gatito {
  
  FCircle gatu;
  int tam = 80;

  gatito() {
    
    FCircle gatu = new FCircle(tam);
    gatu.setPosition(100, 0);
    gatu.setDensity(0.1);
    gatu.setFriction(0.1);
    mundo.add(gatu);
    
  }
  void variables() {   
  }// porque esto no anda?
  void gatitos(float densidad, float friccion, float restitution) {
    //configuraciones
    gatu.setDensity(densidad);
    gatu.setFriction(friccion);
    gatu.setRestitution(restitution);
  }
  void estetica(color a){
    gatu.setFill(a);
  }
}
// Tarjetas de gatitos
/*
/------------
Gatito 1 Gato obeso 
Peso=0.1
friccion=0.1
/------------
Gatito 2 Gato flacucho
/------------
Gatito 3 Gato rebotin
/------------
*/

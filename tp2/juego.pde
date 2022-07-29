
class juego{
  
  gatito g;
  obstaculo o;
  
  juego(){
    mundo = new FWorld();
    mundo.setEdges();
    
    g = new gatito();
    o = new obstaculo();
  }
  void dibujar(){
    background(255);
    
    mundo.step();
    mundo.draw();
    o.variables();
    o.dibujar();
    g.dibujar();
  }
}

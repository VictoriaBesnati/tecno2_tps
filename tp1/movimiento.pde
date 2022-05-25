class mov {
  //=======================
  float prey, y, miy; // direccion de y
  float  prex, x, mix;// direccion de x
  float vel;
  float mp;// polar
  //=======================
  mov() {
    //=======================
    this.y = 0;
    this.x = 0;
    //=======================
  }//----------------------- TODO -----------------------
  void todo(float x2, float y2) {
    //=======================
    prey = y;
    y = y2; 
    miy = y - prey;
    //=======================
    prex = x;
    x = x2;
    mix = x - prex;
    //=======================
    vel = dist(x, y, prex, prey);
    mp = radians(atan2( y-prey, x-prex ));
    //=======================
  }//----------------------- RETURN -----------------------
  //================================
  float dvel() {
    return vel;
  }
  float ddy() {
    return miy;
  }
  float dp () {
    return mp;
  }
  float ddx() {
    return mix;
  }
  //==================================
}

class Square {
  int sz;
  PVector loc;
  PVector vel;
  PVector acc;
  Square() {
    loc= new PVector(30, 30);
    vel= new PVector(random(1, 10), random(1, 10));
    acc= new PVector(0, 0);
    sz=40;
  }
  void display() {
    rect(loc.x, loc.y, sz, sz);
  }
  void move() {
    loc.add(vel);
    vel.add(acc);
  }
  void wallBounce() {
    if (loc.x<0 || loc.x+sz>width) {
      vel.x*=-1;
    }
    if(loc.y<0 || loc.y+sz>height){
      vel.y*=-1;
  }
}
}

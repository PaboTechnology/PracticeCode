class Rain {

  PVector loc, vel, acc, sz;
  Rain() {
    loc=new PVector(random(-100, width), random(-height, 0));
    vel=new PVector(0, 1);
    acc=new PVector(0, 0);
    sz=new PVector(1, 5);
    //    colorMode(HSB, 100, 100, 100,100);
  }

  void display() {
    fill(0, 0, 255);
    ellipse(loc.x, loc.y, sz.x, sz.y);
  }

  void move() {
    loc.add(vel);
    vel.add(acc);
    acc.y+=.02;
    acc.x+=.002;
  }
//  void flood() {
//    if (loc.y>height) {
//      loc.y=;
//      vel.x=0;
//    }
//  }
//}
}

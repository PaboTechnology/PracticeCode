class Ball {

  float sz;
  PVector loc, vel;

  Ball() {
    sz = 50;
    loc = new PVector(random(width), random(height));
    vel = PVector.random2D();
    colorMode(HSB, 100, 100, 100);
  }

  void display() {
    ellipse(loc.x, loc.y, sz, sz);
  }

  void move() {
    loc.add(vel);
  }

  void bounce() {
    if (loc.x + sz/2 > width || loc.x - sz/2 < 0) {
      vel.x *= -1;
    }
    if (loc.y + sz/2 > height || loc.y - sz/2 < 0) {
      vel.y *= -1;
    }
  }
   void bounceWith(Ball other){
     if(loc.dist(other.loc)<sz/2+other.sz/2){
       vel=PVector.sub(loc, other.loc);
       vel.normalize();
     }
  }
}


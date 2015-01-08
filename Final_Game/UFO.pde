class UFO {
  PImage SpaceShip;
  PVector loc;
  PVector vel;
  PVector acc;
  UFO() {
    SpaceShip= loadImage("UFO.gif");
    loc=new PVector(750, 50);
    vel= new PVector(1, 1);
    acc= new PVector(.2, .2);
  }

  void display() {
    image(SpaceShip, loc.x, loc.y);
    SpaceShip.resize(50,20);  
}

  void move() {
    if (keyCode==RIGHT) {
      loc.x+=vel.x;
      vel.x+=acc.x;
      if (vel.x>3) {
        vel.x=3;
      }
    }
    if (keyCode==LEFT) {
      loc.x+=vel.x;
      vel.x-=acc.x;
      if (vel.x<-3) {
        vel.x=-3;
      }
    }
    if (keyCode==UP) {
      loc.y+=vel.y;
      vel.y-=acc.y;
      if (vel.y<-3) {
        vel.y=-3;
      }
    }
    if (keyCode==DOWN) {
      loc.y+=vel.y;
      vel.y+=acc.y;
      if (vel.y>3) {
        vel.y=3;
      }
    }
  }
}


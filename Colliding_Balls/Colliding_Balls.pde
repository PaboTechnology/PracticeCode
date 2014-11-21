PVector loc, acc, vel;
PVector mouse;
float sz;

void setup() {
  size(800, 800);
  loc= new PVector(width/2, height/2);
  vel= PVector.random2D();
  acc= new PVector(0, 0);
  mouse= new PVector();
  sz=100;
}

void draw() {
  background(0);
  loc.add(vel);
  vel.add(acc);
  mouse.set(mouseX, mouseY);
  if (loc.dist(mouse)< sz/2) {
    fill(255, 0, 0);
    if (loc.x<mouse.x) {
      vel.x=-abs(vel.x);
    } else {
      vel.x=abs(vel.x);
    }
    if (loc.y<mouse.y) {
      vel.y=-abs(vel.y);
    } else {
      vel.y=abs(vel.y);
    }
  } else {
    fill(0, 0, 255);
  }
  ellipse(loc.x, loc.y, sz, sz);
  if (loc.x+sz/2>width || loc.x-sz/2<0) {
    vel.x*=-1;
  }
  if (loc.y+sz/2>height || loc.x-sz/2<0) {
    vel.y*=-1;
  }
}


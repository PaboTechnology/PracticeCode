PVector pos, speed,acc;
int sz=34;

void setup() {
  size(800, 800);
  pos= new PVector(width/2, height/2);
  speed= new PVector(random(-1,1),random(-1,1));
  acc= new PVector(random(-.1,.1),random(-.1,.1));
  colorMode(HSB,100,100,100,100);
}

void draw() {
  fill(0,0,0,5);
  rect(0,0,width,height);
  fill(255);
  fill(frameCount%360,100,100);
  ellipse(pos.x, pos.y, sz, sz);
  pos.add(speed);
  speed.limit(5);
  speed.add(acc);
  acc.add(random(-.01,.01),random(-.01,.01), 0 );
  if (pos.x-sz/2>width) {
    pos.x=-sz/2;
  }
  if (pos.x+sz/2<0) {
    pos.x=sz/2+width;
  }
  if (pos.y+sz/2<0) {
    pos.y=height+sz/2;
  }
  if(pos.y-sz/2>height){
    pos.y=-sz/2;
  }
}


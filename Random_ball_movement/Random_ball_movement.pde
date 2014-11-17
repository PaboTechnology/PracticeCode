PVector pos, speed,acc;
int sz=34;

void setup() {
  size(800, 800);
  pos= new PVector(width/2, height/2);
  speed= new PVector(random(-1,1),random(-1,1));
  acc= new PVector(random(-.1,.1),random(-.1,.1));
  textSize(40);
  colorMode(HSB,100,100,100,100);
}

void draw() {
  fill(0,20);
  rect(0,0,width,height);
  fill(255);
  fill(frameCount%360,100,100);
  ellipse(pos.x, pos.y, sz, sz);
  speed.add(acc);
  pos.add(speed);
  acc.add(random(-.1,.1),random(-.1,.1) );
  if (x-sz/2>=width) {
    x=sz/2;
  }
  if (x+sz/2<=0) {
    x=sz/2-width;
  }
  if (y<=0) {
    y=sz/2-height;
  }
  if(y-sz/2>=height){
    y=-sz/2;
  }
}


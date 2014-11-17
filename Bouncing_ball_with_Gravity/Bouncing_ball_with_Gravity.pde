float x, y, xspeed, yspeed, gravity;
float sz=50;

void setup(){
  size(800,800);
  x=width/2;
  y=height/2/2;
  xspeed=0;
  yspeed=1;
  gravity=1;
}

void draw(){
  fill(0,20);
  rect(0,0,width,height);
  fill(255);
  ellipse(x,y,sz,sz);
  yspeed+=gravity;
  x+=xspeed;
  y+=yspeed;
  yspeed+=gravity;
  if(y>=height){
    yspeed=-abs(yspeed);
  }
}

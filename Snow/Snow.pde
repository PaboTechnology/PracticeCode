int count=50;
PVector[] loc=new PVector[count];
PVector[] acc=new PVector[count];
PVector[] vel=new PVector[count];
float[] sz=new float[count];

void draw(){
  size(800,800);
  for(int i; i<count;i++){
    loc[i]= new PVector(random(width), random(-height*2, -sz/2);
    vel[i]= new PVector(1,1);
    sz[i]=new float(.05,.1);
    acc[i]=new PVector(0,0);
  }
}

void draw(){
  background(0);
  for(int i;i<100; i++){
    
  

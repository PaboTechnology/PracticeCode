int count=70;

PVector[] loc=new PVector[count];
PVector[] acc=new PVector[count];
PVector[] vel=new PVector[count];
float[] sz=new float[count];

void setup() {
  size(800, 800);
  for (int i=0; i < count; i++) {
    loc[i]= new PVector(random(width), random(height)); 
    vel[i]= PVector.random2D(); 
    acc[i]= new PVector(0, 0); 
    sz[i]= random(100, 150);
  }
}

void draw() {
  background(0);
  for (int i=0; i<count; i++) { 
    loc[i].add(vel[i]);
    vel[i].add(acc[i]);
    for (int j = 0; j < count; j++) {
      if (i!=j) {
        if (loc[i].dist(loc[j]) < sz[i]/2 + sz[i]/2) {
          if (loc[i].x < loc[j].x) {   
            vel[i].x = -abs(vel[i].x);
            vel[j].x = abs(vel[j].x);
          } else {
            vel[i].x = abs(vel[i].x);
            vel[j].x = -abs(vel[j].x);
          }
          if (loc[i].y < loc[j].y) {  
            vel[i].y = -abs(vel[i].y);
            vel[j].y = abs(vel[j].y);
          } else {
            vel[i].y = abs(vel[i].y);
            vel[j].y = -abs(vel[j].y);
          }
        }
      }
    }
    ellipse(loc[i].x, loc[i].y, sz[i], sz[i]);

    if (loc[i].x + sz[i]/2 > width || loc[i].x - sz[i]/2 < 0) {
      vel[i].x *= -1;
    }
    if (loc[i].y + sz[i]/2 > height || loc[i].y - sz[i]/2 < 0) {
      vel[i].y *= -1;
    }
  }
}


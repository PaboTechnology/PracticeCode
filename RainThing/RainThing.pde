ArrayList<Rain> rain=new ArrayList<Rain>();
Umbrella u;
void setup() {
  size(800, 800);
  u=new Umbrella();
}

void draw() {
  background(120);
  for (int i=0; i<25; i++) {
    rain.add(new Rain());
  }
  for (int i=0; i<rain.size (); i++) {
    Rain r=rain.get(i);
    r.display(); 
    r.move();
    if (r.loc.y>height) {
      rain.remove(i);
    }
  }
  u.display();
  u.retract();
}


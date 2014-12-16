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
  u.display();

  for (int i=0; i<rain.size (); i++) {
    Rain r=rain.get(i);
    r.display(); 
    r.move();
//    if(
    //    if (mousePressed) {
    //      if(
    //      r.flood();
  }
}


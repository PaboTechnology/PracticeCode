Square sq;
Ship tri;
void setup() {
  size(800, 800);
  sq= new Square();
  tri=new Ship();
}

void draw() {
  background(0);
  sq.display();
  sq.move();
  sq.wallBounce();
  tri.display();
  tri.move(sq);
}


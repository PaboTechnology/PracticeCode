Square sq;

void setup() {
  size(800, 800);
  sq= new Square();
}

void draw() {
  background(0);
  sq.display();
  sq.move();
}


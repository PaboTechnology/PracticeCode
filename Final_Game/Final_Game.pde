//Main Game
UFO ufo;
void setup(){
  size(800,800);
  ufo=new UFO();
}

void draw(){
  background(0);
  ufo.display();
  ufo.move();
}

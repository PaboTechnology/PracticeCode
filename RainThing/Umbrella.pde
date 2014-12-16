class Umbrella {

  PVector mouse;
  Umbrella() {
    mouse=new PVector(width/2, height/2);
    noStroke();
  }
  void display() {
    mouse.x=mouseX;
    mouse.y=mouseY;
    fill(0);
    arc(mouse.x, mouse.y, 100, 50, PI, PI*2);
    rect(mouse.x-5, mouse.y, 10, 60);
  }
}


class Umbrella {
  PImage Umbrella;
  PVector mouse;
  PVector sz;
  int rectWidth;
  Umbrella() {
    rectWidth=100;
    mouse=new PVector(width/2, height/2);
    noStroke();
    Umbrella = loadImage("Umbrella.png");
    sz=new PVector(100, 100);
  }
  void display() {
    mouse.x=mouseX;
    mouse.y=mouseY;
    fill(120);
    rect(mouse.x-50, mouse.y-20, rectWidth, height);
    fill(0);
    Umbrella.resize(int(sz.x), int(sz.y));
    image(Umbrella, mouse.x-50, mouse.y-50);
  }
  void retract() {
    if (mousePressed) {
      sz.x=10;
      sz.y=200;
      rectWidth=10;
    } else {
      sz.x=100;
      sz.y=100;
      rectWidth=100;
    }
  }
}


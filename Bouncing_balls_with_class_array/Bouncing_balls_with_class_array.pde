ArrayList<Ball> b= new ArrayList<Ball>(); 

void setup() {
  size(800, 600);
}

void draw() {
  background(0);
  b.add(new Ball());
  for (int i=0; i<b.size (); i++) {
    Ball ball=b.get(i);
    ball.move();
    ball.bounce();
    ball.display();
    for (int j=0; j<b.size (); j++) {
      if (j!=i) {
        Ball otherBall= b.get(j);
        ball.bounceWith(otherBall);
      }
    }
  }
  if (b.size()>100) {
    b.remove(100);
  }
}


class Ship {
  PVector tip;
  PVector rside;
  PVector lside;

  Ship() {
    tip=new PVector(20, 0);
    rside=new PVector(tip.x-20, tip.y+20);
    lside=new PVector(tip.x+20,tip.y+20);
}
  void display() {
    triangle(tip.x, tip.y, rside.x, rside.y, lside.x, lside.y);
}
  void move(Square follow){
    rside.x=tip.x-20;
    rside.y=tip.y+20;
    lside.x=tip.x+20;
    lside.y=tip.y+20;
    tip.x=follow.loc.x-50;
    tip.y=follow.loc.y-50;
  }
}

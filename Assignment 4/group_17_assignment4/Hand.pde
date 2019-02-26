class Hand {
  float x, y, piv_x, piv_y;
  PShape shape;
  
  Hand(PShape shape, float x, float y) {
    this.shape = shape;
    this.x = x;
    this.y = y;
  }
  
  void display() {
    //shape = loadShape("flower_svg/hand.svg");
    //x = 148.095;
    //y = 314.483;
    shape(shape, x, y);
  }
}

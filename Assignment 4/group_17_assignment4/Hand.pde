class Hand {
  float x, y, piv_x, piv_y, speed;
  PShape shape;
  
  //default constructor
  Hand(PShape shape, float x, float y) {
    this.shape = shape;
    this.x = x;
    this.y = y;
  }
  
  Hand(PShape shape) {
    this.shape = shape;
  }
  Hand(PShape shape, float x, float y, float s) {
    this.shape = shape;
    this.x = x;
    this.y = y;
    this.speed = speed;
  }
  
  void display() {
    shape(shape, x, y);
  }
}

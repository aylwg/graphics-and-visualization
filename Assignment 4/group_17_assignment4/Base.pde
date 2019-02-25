class Base {
  float x, y, piv_x, piv_y, speed;
  PShape shape;
  
  Base(PShape shape, float x, float y, float speed) {
    this.shape = shape;
    this.x = x;
    this.y = y;
    this.piv_x = piv_x;
    this.piv_y = piv_y;
    this.speed = speed;
  }
  
  void drawBase() {
    shape(shape, x, y);
  }
  
  // https://processing.org/tutorials/transform2d/
  void drawChild() {
    pushMatrix();
    translate(piv_x, piv_y);
    //rotate(radians(225));
    shape(shape, -(piv_x-x), -(piv_y-y));
    popMatrix();
  }
}

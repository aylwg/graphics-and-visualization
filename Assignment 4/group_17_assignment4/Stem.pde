class Stem extends Hand {
  float x, y, piv_x, piv_y;
  PShape shape;
  
  Stem(PShape shape, float x, float y, float piv_x, float piv_y) {
    super(shape, x, y);
    this.piv_x = piv_x;
    this.piv_y = piv_y;
  }
  // https://processing.org/tutorials/transform2d/
  void display() {
    pushMatrix();
    translate(piv_x, piv_y);
    rotate(PI/3.0);
    shape(shape, -(piv_x-x), -(piv_y-y));
    popMatrix();
  }
}

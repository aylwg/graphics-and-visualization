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
    //super.display();
    
    shape = loadShape("flower_svg/stem1.svg");
    pushMatrix();
    translate(piv_x, piv_y);
    //rotate(radians(350));
    //rotate(radians(0));
    rotate(radians(10));
    //rect(x-25, y-100, 50, 100);
    shape(shape, x-5, y-98);
    popMatrix();
  }
}

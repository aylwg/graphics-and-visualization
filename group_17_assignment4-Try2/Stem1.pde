// code adapted from Case Study: An Arm-Waving Robot - https://processing.org/tutorials/transform2d/

class Stem1 extends Hand {
  float x, y, piv_x, piv_y, speed;
  PShape shape;
  int baseAngle = 0;
  int angleChange = 1;
  final int ANGLE_LIMIT = 10;
  
  Stem1(PShape shape, float x, float y) {
    super(shape, x, y);
  }
  
  Stem1(PShape shape, float x, float y, float piv_x, float piv_y) {
    super(shape, x, y);
    this.piv_x = piv_x;
    this.piv_y = piv_y;
  }

  void display() {
    if (piv_x == 0 && piv_y == 0) {
      super.display();
    } else {    
      shape = loadShape("flower_svg/stem1.svg");
      pushMatrix();
      translate(piv_x, piv_y);
      rotate(radians(baseAngle));
      // code taken from Case Study: An Arm-Waving Robot - https://processing.org/tutorials/transform2d/
      baseAngle += angleChange;
      if (baseAngle > ANGLE_LIMIT || baseAngle < 0) {
        angleChange = -angleChange;
        baseAngle += angleChange;
      }
      //rect(x-25, y-100, 50, 100);
      shape(shape, x-5, y-98);
      popMatrix();
    }
  }
}

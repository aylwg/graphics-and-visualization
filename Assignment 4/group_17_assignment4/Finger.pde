class Finger extends Hand{
  float x, y, piv_x, piv_y, speed;
  PShape shape;
  int baseAngle = 0;
  int angle;
  String path;
  
  final int ANGLE_LIMIT = 10;
  
  //default constructor
  Finger(PShape shape, float x, float y) {
    super(shape, x, y);
  }
  Finger(PShape shape, float x, float y, float piv_x, float piv_y, String path, int angle) {
    super(shape, x, y);
    this.piv_x = piv_x;
    this.piv_y = piv_y;
    this.path = path;
    this.angle = angle;
  }
  
  void display() {
    if (piv_x == 0 && piv_y == 0) {
      super.display();
    } else {    
      //load correct shape and translate
      shape = loadShape(path);
      pushMatrix();
      translate(piv_x-x, piv_y-y);
      rotate(radians(baseAngle));
      // code taken from Case Study: An Arm-Waving Robot - https://processing.org/tutorials/transform2d/
      baseAngle += angle;
      if (baseAngle > ANGLE_LIMIT || baseAngle < 0) {
        angle = -angle;
        baseAngle += angle;
      }
      shape(shape,x-shape.width, y-shape.height);
      popMatrix();
    }
  }
}

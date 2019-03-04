// code adapted from Case Study: An Arm-Waving Robot - https://processing.org/tutorials/transform2d/

class Rays extends Sun {
  float x, y, piv_x, piv_y, speed;
  boolean pulse;
  PShape shape;
  float baseAngle = 0;
  float angleChange = 0.5;
  float baseScale = 1;
  float scaleChange = 0.005;
  
  Rays(PShape shape, float x, float y, float piv_x, float piv_y, boolean pulse) {
    super(shape, x, y);
    this.shape = shape;
    this.piv_x = piv_x;
    this.piv_y = piv_y;
    this.pulse = pulse;
  }

  void display() {  
    pushMatrix();
    translate(piv_x, piv_y);
    rotate(radians(baseAngle));
    baseAngle += angleChange;
    if (pulse == true) {
      scale(baseScale);
      baseScale += scaleChange;
      if (baseScale > 1.25 || baseScale < 1) {
        scaleChange = -scaleChange;
        baseScale += scaleChange;
      }
    }
    shapeMode(CENTER);
    shape(shape, x, y);
    shapeMode(CORNER);
    popMatrix();
  }
  
}

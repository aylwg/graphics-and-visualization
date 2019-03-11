class RotatePyramid extends Pyramid {
  RotatePyramid(float x, int p, float angle) {
    super(x, p, angle);
  }
  RotatePyramid(float x, float y, float z, int p, float angle) {
    super(x, y, z, p, angle);
  }
  
  void display() {
    pushMatrix();
    translate(x, y, z);
    angle += 0.01;
    rotateX(angle);
    rotateY(angle);
    super.display();
    translate(-x, -y, -z);
    popMatrix();
  }
}

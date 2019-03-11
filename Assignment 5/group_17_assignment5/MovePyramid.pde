class MovePyramid extends RotatePyramid {
  MovePyramid(float x, int p, float angle) {
    super(x, p, angle);
  }
  MovePyramid(float x, float y, float z, int p, float angle) {
    super(x, y, z, p, angle);
  }
  void display() {
    pushMatrix();
    translate(x, y, z);
    rotateX(mouseX * 0.01);
    //rotateY(mouseY * 0.01);
    super.display();
    translate(-x, -y, -z);
    popMatrix();
  }
}

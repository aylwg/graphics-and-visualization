class Sun {
  float x, y, piv_x, piv_y, speed;
  PShape shape;
  
  Sun(PShape shape, float x, float y) {
    this.shape = shape;
    this.x = x;
    this.y = y;
  }
  
  Sun(PShape shape, float x, float y, float s) {
    this.shape = shape;
    this.x = x;
    this.y = y;
    this.speed = speed;
  }
  
  void display() {
    shape(shape, x, y);
  }
}

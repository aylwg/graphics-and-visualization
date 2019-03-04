class Clouds {
  float x, y, speed;
  PShape shape;
  
  Clouds(PShape shape, float x, float y, float s) {
    this.shape = shape;
    this.x = x;
    this.y = y;
    this.speed = s;
  }
  
  void display() {    
    pushMatrix();
    x = x - speed;
    if (x < -100) {
      x = 500;
    }
    shape(shape, x, y);
    
    popMatrix();
  }
}

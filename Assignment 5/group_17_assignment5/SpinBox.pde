class SpinBox extends Box {
  
  SpinBox(float x, float y, float z, float spin, color col, float speed, float size, float distance) {
    super(x, y, z, spin, col, speed, size, distance);
    vel = 0;
    rotation = 0;
  }
  void display() {
    pushMatrix();
    noStroke();
    translate(x, y+vel, z);
    vel += 0.05*speed;
    if (vel == distance){
      speed = -speed;
    }
    if (vel == -distance){
      speed = -speed;
    }
    fill(col);
    //can add more variation by turning rotation and spin into XYZ variables
    rotation += spin;
    rotateX(rotation);
    rotateY(rotation);
    rotateZ(rotation);
    box(size);
    popMatrix();
  }
}

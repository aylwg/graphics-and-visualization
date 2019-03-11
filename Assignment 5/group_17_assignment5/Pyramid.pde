// code adapted from http://learningprocessing.com/examples/chp14/example-14-04-pyramid

class Pyramid {
  float x, y, z, angle;
  int p;
  
  Pyramid(float x, int p, float angle) {
    this.x = x;
    this.p = p;
    this.angle = angle;
  }
  
  Pyramid(float x, float y, float z, int p, float angle) {
    this.x = x;
    this.y = y;
    this.z = z;
    this.p = p;
    this.angle = angle;
  }
  
  void display() {
    pushMatrix();
    stroke(0);
    translate(x, y, z);

    beginShape(TRIANGLES);
    
    fill(255, 200, 200, 175);
    vertex(-p, -p, -p);
    vertex(p, -p, -p);
    vertex(0, 0, p);
    
    fill(200, 150, 200, 175);
    vertex(p, -p, -p);
    vertex(p, p, -p);
    vertex( 0, 0, p);
    
    fill(200, 255, 200, 175);
    vertex(p, p, -p);
    vertex(-p, p, -p);
    vertex( 0, 0, p);
    
    fill(150, 200, 200, 175);
    vertex(-p, p, -p);
    vertex(-p, -p, -p);
    vertex( 0, 0, p);
    
    endShape();
    
    translate(-x, -y, -z);
    popMatrix();
  }
}

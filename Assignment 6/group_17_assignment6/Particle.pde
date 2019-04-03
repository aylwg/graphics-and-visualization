class Particle {
  float x, y;
  float vx, vy;
  float r;
  int c;
  
  Particle(float _x, float _y, float _vx, float _vy, float _r, color _c) {
    x = _x;
    y = _y;
    vx = _vx;
    vy = _vy;
    r = _r;
    c = _c;
  }
  
  void applyForces(float _fx, float _fy) {
    vy += _fy;
    vx += _fx;
    y += vy;
    x += vx;
  }
   
  void display() {
    colorMode(HSB, 360, 100, 100);
    fill(c, 100, 100);
    ellipse(x, y, r, r);
  }
}

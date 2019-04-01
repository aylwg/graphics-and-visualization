class Spark {

  float x, y;
  float w, h;
  float vx = 0;
  float vy = 0;
  int id;
 
 //initialize spark variables
  Spark(float xin, float yin, float win, float hin, int idin){
    x = xin;
    y = yin;
    w = win;
    h = hin;
    id = idin;
  } 
  
  //code edited from https://processing.org/reference/keyPressed_.html
  void move() {
    vy += gravity;
    y += vy;
    
    if (y + w > height) {
      y = height - w;
      vy *= friction; 
    } 
    else if (y - w < 0) {
      y = w;
      vy *= friction;
    }

  }
  
  // star code edited from https://processing.org/examples/star.html
  void star(float x, float y, float win, float hin, float npoints) {
  float angle = TWO_PI / npoints;
  float halfAngle = angle/2.0;
  beginShape();
  for (float a = 0; a < TWO_PI; a += angle) {
    float sx = x + cos(a) * hin;
    float sy = y + sin(a) * hin;
    vertex(sx, sy);
    sx = x + cos(a+halfAngle) * win;
    sy = y + sin(a+halfAngle) * win;
    vertex(sx, sy);
  }
  endShape();
  }
  
  //draw sparks as stars. Randomized number of points to create animation
  void display() {
    stroke(#ffe100);
    noFill();
    star(x, y,w,h,random(5,6));
    noStroke();
  }

}

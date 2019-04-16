// code adapted from Daniel Shiffman's coding train example
// Code for: https://youtu.be/AaGK-fj-BAM

class Snake{
  float x;
  float y = 40;
  float xspeed = 1;
  float yspeed = 0;
  int total = 0;
  ArrayList<PVector> body = new ArrayList<PVector>();
  
  Snake() {
  }

  boolean extend(PVector pos){
    float d = dist(x, y, pos.x, pos.y);
    if (d < 1) {
      if(pos.z == 20){
        total++;
        score++;
        return true;
      }
      else{
        score--;
        return true;        
      }
    }
    return false;
  }
  
  void direction(float x, float y) {
    xspeed = x;
    yspeed = y;
  }
  
  //code to reset snake length
  void end() {
    for (int i = 0; i < body.size(); i++) {
      PVector pos = body.get(i);
      float d = dist(x, y, pos.x, pos.y);
      if (d < 1) {
        //total = 0;
        //body.clear();
      }
    }
  }
  
  void update() {
    if (total > 0) {
      if (total == body.size() && !body.isEmpty()) {
        body.remove(0);
      }
      body.add(new PVector(x, y));
    }
    
    x = x + xspeed*scale;
    y = y + yspeed*scale;
  }
  
  void display() {
    fill(255);
    for (PVector v : body) {
      rect(v.x, v.y, scale, scale);
    }
    if (x < 0) {
      x = width-20;
      score -=1;
    } else if (x > width-20) {
      x = 0;
      score -=1;
    } else if (y < 0) {
      y = height-20;
      score -=1;
    } else if (y > height-20) {
      y = 0;
      score -=1;
    }
    rect(x, y, scale, scale);
  }
}

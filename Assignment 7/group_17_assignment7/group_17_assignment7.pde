/*
// Daniel Shiffman
// http://codingtra.in
// http://patreon.com/codingtrain
// Code for: https://youtu.be/AaGK-fj-BAM

Snake s;
int scl = 20;

PVector food;

void setup() {
  size(600, 600);
  s = new Snake();
  frameRate(10);
  pickLocation();
}

void pickLocation() {
  int cols = width/scl;
  int rows = height/scl;
  food = new PVector(floor(random(cols)), floor(random(rows)));
  food.mult(scl);
}

void mousePressed() {
  s.total++;
}

void draw() {
  background(51);

  if (s.eat(food)) {
    pickLocation();
  }
  s.death();
  s.update();
  s.show();


  fill(255, 0, 100);
  rect(food.x, food.y, scl, scl);
}





void keyPressed() {
  if (keyCode == UP) {
    s.dir(0, -1);
  } else if (keyCode == DOWN) {
    s.dir(0, 1);
  } else if (keyCode == RIGHT) {
    s.dir(1, 0);
  } else if (keyCode == LEFT) {
    s.dir(-1, 0);
  }

*/
Snake snake;

void setup() {
  size(700, 700);
  
  //setup green and red dots with an if statement
  //green += 1 point
  //red += 1 point
  
  snake = new Snake();
  
}

void keyPressed() {
   if (key == CODED) {
    if (keyCode == UP) {
    }
    else if (keyCode == DOWN){
    }
    else if (keyCode == LEFT){
    }
    else if (keyCode == RIGHT){
    }
  }
}

void draw(){
  background(0);
}

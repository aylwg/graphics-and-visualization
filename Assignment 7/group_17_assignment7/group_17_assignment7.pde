Snake snake;
int score = 3;
String win = "Congratulations, you won!";
String lose = "Sorry, game over.";
PImage img;
boolean firstPlay;
int rectX, rectY;
int rectSize = 90;
color rectColor, rectHighlight;
color currentColor;
boolean rectOver = false;
int scale = 20;
PVector dots;

void setup() {
  size(700, 700);
  img = loadImage("titleCard.jpg"); 
  firstPlay = true;
  rectColor = color(0);
  rectHighlight = color(250);
  rectX = width/2-rectSize-10;
  rectY = 550;
  
  //setup green and red dots with an if statement
  //green += 1 point
  //red += 1 point
  
  snake = new Snake();
  randLocation();
}

void keyPressed() {
   if (key == CODED) {
    if (keyCode == UP) {
      //score += 1;
      snake.direction(0, -1);
    }
    else if (keyCode == DOWN){
      //score -=1;
      snake.direction(0, 1);
    }
    else if (keyCode == LEFT){
      snake.direction(-1, 0);
    }
    else if (keyCode == RIGHT){
      snake.direction(1, 0);
    }
  }
}

void draw(){
  background(0);
  frameRate(10);
  textSize(30);
  fill(250);
  text("Score = "+ score ,10,30);
  if (score <= 0){
    text(lose, 30,500);
    text("Thanks for playing", 30,550);

  }
  else if  (score >= 20){
    text(win, 30,500);
    text("Thanks for playing", 30,550);

  }
  else if (score == 3 & firstPlay) {
    image(img, 0 , 0, img.width/6, img.height/6);
    if (rectOver) {
      fill(rectHighlight);
    } else {
      fill(rectColor);
    }
    stroke(255);
    update(mouseX, mouseY);
    rect(rectX, rectY, rectSize+40, rectSize);
    noStroke();
    fill(#f442bf);
    text("Play",rectX,rectY+40);
  }
  if(!firstPlay) {
    if (snake.extend(dots)) {
      randLocation();
    }
    snake.end();
    snake.update();
    snake.display();
    
    fill(255, 0, 100);
    rect(dots.x, dots.y, scale, scale);
  }
}

void update(int x, int y) {
 if ( overRect(rectX, rectY, rectSize, rectSize) ) {
   rectOver = true;
 } else {
   rectOver = false;
 }
}

void mousePressed() {
  if (rectOver & firstPlay) {
    firstPlay = false;
  }
}

boolean overRect(int x, int y, int width, int height)  {
  if (mouseX >= x && mouseX <= x+width && 
      mouseY >= y && mouseY <= y+height) {
    return true;
  } else {
    return false;
  }
}

void randLocation() {
  int col = width/scale;
  int row = height/scale;
  dots = new PVector(floor(random(col)), floor(random(row)));
  dots.mult(scale);
}

// button code edited from https://processing.org/examples/button.html

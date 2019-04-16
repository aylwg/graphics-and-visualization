Snake snake;
int score = 3;
String win = "Congratulations, you won!";
String lose = "Sorry, game over.";
PImage img;
boolean firstPlay;
int playX, playY;
int playSize = 100;
int quitX, quitY;
int quitSize = 100;
color buttonColor, buttonHighlight;
color currentColor;
boolean playButton = false;
boolean quitButton = false;
int scale = 20;
PVector dots, dots2, dots3, dots4;


void setup() {
  size(700, 700);
  img = loadImage("titleCard.jpg"); 
  firstPlay = true;
  buttonColor = color(0);
  buttonHighlight = color(250);
  playX = width/2-playSize+50;
  playY = 590;
  quitX = width/2-playSize+50;
  quitY = 350;
  
  snake = new Snake();
  randLocation();
}

void keyPressed() {
   if (key == CODED) {
    if (keyCode == UP) {
      snake.direction(0, -1);
    }
    else if (keyCode == DOWN){
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
  
  if (score <= 0){
    score = 0;
    text("Score = "+ score ,10,30);
    text(lose, 220,500);
    text("Thanks for playing.", 210,550);
    snake.direction(0, 0);
    if (quitButton) {
      fill(buttonHighlight);
    } else {
      fill(buttonColor);
    }
    stroke(255);
    update(mouseX, mouseY);
    rect(quitX, quitY, quitSize, quitSize);
    noStroke();
    fill(#f442bf);
    text("Quit",quitX+20,quitY+55);
    fill(255);
  }
  
  else if  (score >= 20){
    text("Score = "+ score ,10,30);
    text(win, 160,500);
    text("Thanks for playing.", 210,550);
    snake.direction(0, 0);
    if (quitButton) {
      fill(buttonHighlight);
    } else {
      fill(buttonColor);
    }
    stroke(255);
    update(mouseX, mouseY);
    rect(quitX, quitY, quitSize, quitSize);
    noStroke();
    fill(#f442bf);
    text("Quit",quitX+20,quitY+55);
    fill(255);
  }
  
  else if (score == 3 & firstPlay) {
    image(img, 120 , 40, img.width/6, img.height/6);
    if (playButton) {
      fill(buttonHighlight);
    } else {
      fill(buttonColor);
    }
    stroke(255);
    update(mouseX, mouseY);
    rect(playX, playY, playSize, playSize);
    noStroke();
    fill(#f442bf);
    text("Play",playX+23,playY+55);
  }
  
  if(!firstPlay) {
    text("Score = "+ score ,10,30);
    if (snake.extend(dots)) {
      randLocation();
    }
    if (snake.extend(dots2)) {
      randLocation();
    }
    if (score >= 10){
      if (snake.extend(dots3)) {
        randLocation();
      }
    }
    if (score >= 15){
      if (snake.extend(dots4)) {
        randLocation();
      }
    }
    snake.end();
    snake.update();
    snake.display();
    
    
    fill(0, 255, 100);
    rect(dots.x, dots.y, scale, scale);
    fill(255, 0, 100);
    rect(dots2.x, dots2.y, scale, scale);
    if (score >= 10){
      rect(dots3.x, dots3.y, scale, scale);
    }
    if (score >= 15){
      rect(dots4.x, dots4.y, scale, scale);
    }
  }
}

void update(int x, int y) {
 if (overButton(playX, playY, playSize, playSize) ) {
   playButton = true;
 } else {
   playButton = false;
 }
 
 if (overButton(quitX, quitY, quitSize, quitSize)) {
   quitButton = true;
 }
 else{
   quitButton = false;
 }
}

void mousePressed() {
  if (playButton & firstPlay) {
    firstPlay = false;
    snake.direction(1, 0);
    randLocation();
  }
  if (quitButton & !firstPlay){
    firstPlay = true;
    score = 3;
    snake.total = 0;
    snake.body.clear();
  }
}

boolean overButton(int x, int y, int width, int height)  {
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
  dots = new PVector(floor(random(col)), floor(random(row)), 1);
  dots2 = new PVector(floor(random(col)), floor(random(row)), 0);
  if (score >= 10){
    dots3 = new PVector(floor(random(col)), floor(random(row)), 0);
    dots3.mult(scale);
  }
  if (score >= 15){
    dots4 = new PVector(floor(random(col)), floor(random(row)), 0);
    dots4.mult(scale);
  }
  dots.mult(scale);
  dots2.mult(scale);
}

// button code edited from https://processing.org/examples/button.html

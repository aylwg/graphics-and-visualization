// sound libary source: https://github.com/processing/processing-sound
// soundfile code: https://processing.org/reference/libraries/sound/SoundFile.html
import processing.sound.*;
SoundFile file;

PShape cloud, flower, pinkie, ring, rays2, leaf1, rays1, hand, stem1, sun;
PShape rightHand, leftHand, sw1, sw2;

Hand lhand, rhand;
Flower leftFlower, rightFlower;
Sun sunBody;
Rays raySpin1, raySpin2;
Clouds cloud1, cloud2, cloud3;
Sweater swtr;
Finger f1, f2;

void setup(){
  frameRate(30);
  size(500,500);
  
  file = new SoundFile(this, "sound.mp3");
  file.play();
  
  hand = loadShape("flower_svg/hand.svg");
  lhand = new Hand (hand, 10.33, 370.5);
  
  rightHand = loadShape("flower_svg/rightHand.svg");
  rhand = new Hand(rightHand, 253.33, 371.42);
  
  leftFlower = new Flower("flower_svg/stem.svg", "flower_svg/flowerLeft.svg", 92.7, 300, 99.8, 228.7, -61.84, 25);
  rightFlower = new Flower("flower_svg/stemRight.svg", "flower_svg/flowerRight2.svg", "flower_svg/leaf.svg", 291.7, 292.8, 291.7, 215.5, -15, 26);
  
  swtr = new Sweater(sw1, 80.32, 480.68,"flower_svg/sw1.svg","flower_svg/sw2.svg");
  
  f1 = new Finger(pinkie, 10.822, 380.93, 64.799, 470.329,"flower_svg/pinkie.svg", 2);
  f2 = new Finger(ring, 10.822, 400.93,  62.799, 455.329,"flower_svg/ring.svg", 1);


  sun = loadShape("flower_svg/sun.svg");
  sunBody = new Sun (sun, 350, 100);
  
  rays1 = loadShape("flower_svg/rays1.svg");
  raySpin1 = new Rays(rays1, 350, 100, 372, 122, true);
  
  rays2 = loadShape("flower_svg/rays2.svg");
  raySpin2 = new Rays(rays2, 350, 100, 372, 122, false);
  
  cloud = loadShape("flower_svg/cloud.svg");
  cloud1 = new Clouds (cloud, -20, 140, 2);
  cloud2 = new Clouds (cloud, 180, 20, 3);
  cloud3 = new Clouds (cloud, 350, 250, 1.5);
  
}
void draw (){
  background(215, 241, 244);
  sunBody.display();
  raySpin1.display();
  raySpin2.display();
  cloud1.display();
  cloud2.display();
  cloud3.display();
  f1.display();
  f2.display();
  lhand.display();
  rhand.display();
  leftFlower.display();
  rightFlower.display();
  swtr.display();
}

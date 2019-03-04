PShape cloud, flower, pinkie, ring, rays2, leaf1, rays1, hand, stem1, sun;
PShape rightHand, leftHand;

Hand base, base2, base3;
Flower leftFlower, rightFlower;
Sun sunBody;
Rays raySpin1, raySpin2;
Clouds cloud1, cloud2, cloud3;

void setup(){
  frameRate(30);
  size(500,500);
  
  hand = loadShape("flower_svg/hand.svg");
  base = new Hand (hand, 167.33, 348.5);
  
  rightHand = loadShape("flower_svg/rightHand.svg");
  base2 = new Hand(rightHand, 253.33, 371.42);
  
  leftHand = loadShape("flower_svg/leftHand.svg");
  base3 = new Hand(leftHand, 10, 371.42);
  
  leftFlower = new Flower("flower_svg/stem.svg", "flower_svg/flowerLeft.svg", 92.7, 300, 99.8, 228.7, -61.84, 25);
  rightFlower = new Flower("flower_svg/stemRight.svg", "flower_svg/flowerRight2.svg", "flower_svg/leaf.svg", 291.7, 292.8, 291.7, 215.5, -15, 26);
  
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
  base.display();
  base2.display();
  base3.display();
  leftFlower.display();
  rightFlower.display();
}

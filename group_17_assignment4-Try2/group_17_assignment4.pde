PShape cloud, flowerRight1, flowerRight2, flowerRight3, flowerLeft;
PShape leaf1, rays, leftHand, rightHand, stemLeft, stemRight, sun;

Hand base;
Stem1 first;
Stem2 second; 
Stem1 third, center, leaf, leftpetal, rightpetal, centerpetal;
RightHand base2;

void setup(){
  size(500,500);
  rightHand = loadShape("flower_svg/rightHand.svg");
  base2 = new RightHand (rightHand, 253.33, 371.42);
  
  leftHand = loadShape("flower_svg/leftHand.svg");
  base = new Hand (leftHand, 10, 371.42);
  
}
void draw (){
  background(215, 241, 244);
  base.display();
  //first.display();
  //second.display();
  //third.display();
  //leaf.display();
  //center.display();
  //leftpetal.display();
  //rightpetal.display();
  //centerpetal.display();
  
  //shape(hand,148.095,314.483);
  //shape(stem1,262.596,218.626);
  //shape(stem2,264.592,196.334);
  //shape(stem3,258.343,142.222);
  //shape(stem3Leaf,159.29,159.29);
  //shape(stem3FlowerCenter,250.224,128.215);
  //shape(stem3FlowerPetalL,191.297,113.304);
  //shape(stem3FlowerPetalR,251.363,52.075);
  //shape(stem3FlowerPetalC, 188.199,60.23);
  
  
}

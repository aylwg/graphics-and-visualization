//PShape hand, stem1, stem2, stem3FlowerCenter, stem3FlowerPetalC;
//PShape stem3FlowerPetalL, stem3FlowerPetalR, stem3Leaf, stem3;

//Base parent; 
//Base child;
PShape hand;
Hand base;
PShape stem1;

void setup(){
  size(500,500);
  hand = loadShape("flower_svg/hand.svg");
  base = new Hand(hand, 148.095, 314.483);
  stem1 = loadShape("flower_svg/stem1.svg");
  //stem2 = loadShape("flower_svg/stem2.svg");
  //stem3 = loadShape("flower_svg/stem3.svg");
  //stem3FlowerCenter = loadShape ("flower_svg/stem3-flower-center.svg");
  //stem3FlowerPetalC = loadShape ("flower_svg/stem3-flower-petalC.svg");
  //stem3FlowerPetalL = loadShape ("flower_svg/stem3-flower-petalL.svg");
  //stem3FlowerPetalR = loadShape ("flower_svg/stem3-flower-petalR.svg");
  //stem3Leaf = loadShape ("flower_svg/stem3-leaf.svg");
  //parent = new Base(hand, 148.095, 314.483, 0);
  //child = new Base(stem1, 262.596, 218.626, 0);
}
void draw (){
  background(215,241,244);
  base.display();
  //child.drawChild();
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

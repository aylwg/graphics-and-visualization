PShape hand, stem1, stem2, stem2Flower, stem3FlowerCenter, stem3FlowerPetalC;
PShape stem3FlowerPetalL, stem3FlowerPetalR, stem3Leaf, stem3;

void setup(){
  size(500,500);
  hand = loadShape("flower_svg/hand.svg");
  stem1 = loadShape("flower_svg/stem1.svg");
  stem2 = loadShape("flower_svg/stem2.svg");
  stem2Flower = loadShape("flower_svg/stem2-flower.svg");
  stem3 = loadShape("flower_svg/stem3.svg");
  stem3FlowerCenter = loadShape ("flower_svg/stem3-flower-center.svg");
  stem3FlowerPetalC = loadShape ("flower_svg/stem3-flower-petalC.svg");
  stem3FlowerPetalL = loadShape ("flower_svg/stem3-flower-petalL.svg");
  stem3FlowerPetalR = loadShape ("flower_svg/stem3-flower.petalR.svg");
  stem3Leaf = loadShape ("flower_svg/stem3-leaf.svg");
}
void draw (){
  background(215,241,244);
  shape(hand,310,671.613);
  shape(stem1,564.058,458.006);
  shape(stem2,568.504,489.338);
  shape(stem3,554.584,287.81);
  shape(stem2Flower, 621.829,408.349);
  shape(stem3Leaf,333.937,309.047);
  shape(stem3FlowerCenter,536.499,256.607);
  shape(stem3FlowerPetalL,405.234,223.393);
  shape(stem3FlowerPetalR,539.036,87);
  shape(stem3FlowerPetalC, 398.334,105.166);
  
  
}

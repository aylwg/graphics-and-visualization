// code adapted from Case Study: An Arm-Waving Robot - https://processing.org/tutorials/transform2d/

class Flower {
  float sx, sy, fx, fy, xd;
  String stemName, flowerName, leafName;
  PShape stem, flower, leaf;
  int baseAngle = 0;
  int flowerAngle = 0;
  int angleChange = 1;
  //final int ANGLE_LIMIT = 30;
  final int angle;
  Flower(String stemName, String flowerName, float sx, float sy, float fx, float fy, float xd, final int angle) {
    this.stemName = stemName;
    this.flowerName = flowerName;
    this.sx = sx;
    this.sy = sy;
    this.fx = fx;
    this.fy = fy;
    this.xd = xd;
    this.angle = angle;
    this.stem = loadShape(stemName);
    this.flower = loadShape(flowerName);
  }
  
  Flower(String stemName, String flowerName, String leafName, float sx, float sy, float fx, float fy, float xd, final int angle) {
    this.stemName = stemName;
    this.flowerName = flowerName;
    this.leafName = leafName;
    this.sx = sx;
    this.sy = sy;
    this.fx = fx;
    this.fy = fy;
    this.xd = xd;
    this.angle = angle;
    this.stem = loadShape(stemName);
    this.flower = loadShape(flowerName);
    this.leaf = loadShape(leafName);
  }
  
  void display() {
    pushMatrix();
    translate(sx, sy+stem.height);
    rotate(radians(baseAngle));
    baseAngle += angleChange;
    if (baseAngle > angle || baseAngle < 0) {
      angleChange = -angleChange;
      baseAngle += angleChange;
    } 
    displayFlower();

    if (leafName!=null) {
      displayLeaf();
    }

    shape(stem, 0, -stem.height);
    translate(-sx, -(sy+stem.height));
    popMatrix();
  }
  
  void displayFlower() {
    pushMatrix();
    translate(-sx, -sy);
    translate(fx, fy);
    rotate(radians(flowerAngle));
    //rotate(radians(50));
    flowerAngle += angleChange;
    if (flowerAngle > angle || flowerAngle < 0) {
      angleChange = -angleChange;
      flowerAngle += angleChange;
    }
    // xd is the difference in location of the base of the flower
    shape(flower, xd, -flower.height);
    translate(-fx, -fy);
    popMatrix();
  }
  
  void displayLeaf() {
    pushMatrix();
    translate(0, -stem.height);
    shape(leaf, -leaf.width+6, -(stem.height/2));
    translate(0, stem.height);
    popMatrix();
  }
}

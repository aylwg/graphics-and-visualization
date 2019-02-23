rect(66, 32, 12, 37); // right arm

void drawRightArm()
{
  pushMatrix();
  translate(66, 32);
  rect(0, 0, 12, 37);
  popMatrix();
}

// example 
// original (66, 32)
// translate (66, 32) - pivot point
// display (0, 0)

void drawChild() {
  pushMatrix();
  translate(piv_x, piv_y);
  shape(shape, piv_x-x, piv_y-y);
  popMatrix();
}
  
shape(stem1, 262.596, 218.626);
//current coordinates (262.596, 218.626)
//new coordinates (266.731, 315.416)


child = new Base(stem1, 262.596, 218.626, 0);
child.drawChild(); 

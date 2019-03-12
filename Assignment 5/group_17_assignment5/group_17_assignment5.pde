Sphere sph1;
RotateSphere sph2;
LightSphere sph3;

Pyramid pyd1;
RotatePyramid pyd2;
MovePyramid pyd3;

Box box1, box2;
SpinBox box3;

void setup(){
  size(900,900,P3D);
  sph1 = new Sphere(width/2,height/2, 450, 10);
  sph3 = new LightSphere(width/2,height/2, 450, 10,100,20,60);
  sph2 = new RotateSphere(width/2,height/2, 450, 10);
  
  pyd1 = new Pyramid(200, 200, 0, 100, 0);
  pyd2 = new RotatePyramid(width/2, 100, 0.0);
  pyd3 = new MovePyramid(width/2, 100, 0.0);
  
  //new Box(x, y, z, rotX, rotY, rotZ, col, speed, size, distance);
  box1 = new Box(200, 700, 0, 0, 0, 0, #97f7fc, 30, 100, 30);
  box2 = new Box(450, 700, 0.9, 0.9, 0.8, 0, #fcf797, 5, 150, 10);
  box3 = new SpinBox(700, 700, 0, 0.05, #fc97f7, 20, 100, 20);
  
}

void draw(){
  lights();
  background(#E6E6FA);
  sph1.display();
  sph3.display();
  sph2.display();
  
  //pyd1.display();
  pyd2.display();
  pyd3.display();
  
  box1.display();
  box2.display();
  box3.display();

}

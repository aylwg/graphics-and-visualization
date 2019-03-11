Sphere sph1;
RotateSphere sph2;
LightSphere sph3;

void setup(){
  size(900,900,P3D);
  sph1 = new Sphere(width/2,height/2, 450, 10);
  sph3 = new LightSphere(width/2,height/2, 450, 10,100,20,60);
  sph2 = new RotateSphere(width/2,height/2, 450, 10);
}

void draw(){
  lights();
  background(#E6E6FA);
  sph1.display();
  sph3.display();
  sph2.display();
}

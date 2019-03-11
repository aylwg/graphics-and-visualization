class RotateSphere extends Sphere{
  
  RotateSphere(float x, float y, float z, float size){
    super(x,y,z,size);
  }
  
  void display(){
    pushMatrix();
    stroke(#8c0e39);
    fill(#f44280);
    translate(x,y,z);
    rotateX(mouseY * 0.05);
    rotateY(mouseX * 0.05);
    sphere(size+20);
    popMatrix();
  }
}

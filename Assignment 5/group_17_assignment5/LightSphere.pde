class LightSphere extends Sphere{
  float x,y,z,size;
  color colR,colG, colB;
  
  LightSphere(float x, float y, float z, float size, color colR, color colG, color colB){
  super(x,y,z,size);
  this.colR = colR;
  this.colG = colG;
  this.colB = colB;
  }
  
  void display(){
    fill(colR,colG,colB);
    translate(250,250,250);

    if (colR == 255){
      colR = 0;
    } else {
      colR += 1;
    }
    
    if (colG == 255){
      colG = 0;
    } else {
      colG += 1;
    }
    
    if (colB == 255){
      colB = 0;
    } else {
      colB += 1;
    }

    sphere(10);
   
    
    
    
  }
  
}

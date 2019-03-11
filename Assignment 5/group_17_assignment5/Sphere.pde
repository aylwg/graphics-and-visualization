class Sphere{
  float x,y,z,size,countX,countY;
  color col;
  
   Sphere(float x, float y, float z, float size){
    this.x = x;
    this.y = y;
    this.z = z;
    this.size = size;
    col = #e2f442;
  }
  
  Sphere(float x, float y, float z, float size, color col){
    this.x = x;
    this.y = y;
    this.z = z;
    this.size = size;
    this.col = col;
  }
  void display(){
    noStroke();
    //fill(col);
    pushMatrix();
    translate(countX,countY,z);
    sphere(size);
    //translate(-countX, -countY, -z);
    popMatrix();
    countX +=1;
    countY +=1;
    if (countX > width){
      countX = 0;
      countY = 0;
    }
    
  }

}

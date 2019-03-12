class Box{
  float x,y,z,rotX,rotY,rotZ,speed,size,distance;
  float vel;
  float rotation, spin;
  
  color col;
  
   Box(float x, float y, float z, float rotX, float rotY, float rotZ, color col, float speed, float size, float distance){
    this.x = x;
    this.y = y;
    this.z = z;
    this.rotZ = rotZ;
    this.rotX = rotX;
    this.rotY = rotY;
    this.speed = speed;
    this.size = size;
    this.col = col;
    this.distance = distance;
    vel = 0;
  }
  
  Box(float x, float y, float z, float spin, color col, float speed, float size, float distance){
    this.x = x;
    this.y = y;
    this.z = z;
    this.spin = spin;
    this.speed = speed;
    this.size = size;
    this.col = col;
    this.distance = distance;
    vel = 0;
  }
  
  void display(){
    
    pushMatrix();
    noStroke();
    fill(col);
    translate(x, y+vel, z);
    rotateX(rotX);
    rotateY(rotY);
    rotateZ(rotZ);
    vel += 0.05*speed;
    if (vel == distance){
      speed = -speed;
    }
    if (vel == -distance){
      speed = -speed;
    }
    box(size);
    popMatrix();
    
  }

}

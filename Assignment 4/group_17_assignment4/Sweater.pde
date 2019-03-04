class Sweater extends Hand{
  float x, y, speed;
  PShape shape;
  String path1, path2;
  float counter = 1;
  
  Sweater(PShape shape, float x, float y, String path1, String path2) {
    super(shape);
    this.x = x;
    this.y = y;
    this.path1 = path1;
    this.path2 = path2;
  }
  
    void display() {
    if (counter <= 20) { 
      shape = loadShape(path1);
      counter += 1;
      shape(shape,x, y); 
    } else if (counter > 20) {    
      shape = loadShape(path2);
      shape(shape,x, y);
      if (counter == 40){
        counter = 0;
      }else{
        counter += 1;
      }
    }
  }
  
  
}

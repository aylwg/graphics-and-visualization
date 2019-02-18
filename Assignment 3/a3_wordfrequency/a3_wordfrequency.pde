float newY;
String[] s;

void setup(){
 size (600,600);
 newY = 0;
 s = loadStrings("wordfrequency.txt");
 fill(135, 0, 22);
 stroke(0,0,0);
 strokeWeight(3);
}

void draw(){
 for (int i = 0 ; i < s.length; i++) {
    String [] vals = split(s[i], ": ");
    rect(0, newY, float(vals[1])/10, 10);
    newY += 10;
  }  
}

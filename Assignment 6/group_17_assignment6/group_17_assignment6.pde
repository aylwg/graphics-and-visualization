ArrayList<Firework> systems;
float gravity = 0.3;
float friction = -0.96;
int numParts;

int numSparks = 70;
boolean sparksFly = false;
Spark[] sparks = new Spark[numSparks];

void setup() {
  size(500, 500);
  systems = new ArrayList<Firework>();
  
  for (int j = 0; j < numSparks; j++) {
    sparks[j] = new Spark(random(width), random(height), 10, random(3, 5), j);
  }
}

void mousePressed() {
  numParts = Math.round(random(50,70));
  systems.add(new Firework(numParts));
}

//check if mouseClicked to trigger sparks

void mouseClicked(){
  sparksFly = true;
}

void draw() {
  background(0);
  
  //permanently change from fireworks to sparks
  //iterate through and create sparks
  if (sparksFly){
    for (Spark spark : sparks) {
      spark.move();
      spark.display();  
    }
  }
  for (Firework ps : systems) {
    ps.display();
  }
}

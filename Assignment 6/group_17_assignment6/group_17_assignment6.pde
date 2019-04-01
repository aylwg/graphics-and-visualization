Particle p;
ArrayList<Particle> particles;
float gravity = 0.3;
float friction = -0.96;

int numSparks = 70;
int rpnum = 500;
RegenParticle[] regen = new RegenParticle[rpnum];
boolean sparksFly = false;
Spark[] sparks = new Spark[numSparks];

void setup() {
  size(500, 500);
  particles = new ArrayList<Particle>();
  for (int i = 0; i < 20; i++) {
    Particle p = new Particle(width/2, height/2, 0, 0, 2.0);
    //p.applyForces(1.0, -1.5);
    particles.add(p);
  }
  for (int j = 0; j < numSparks; j++) {
    sparks[j] = new Spark(random(width), random(height), 10, random(3, 5), j);
  }
  
  for (int i = 0; i < regen.length; i++) {
    float ox = 250;
    float oy = 250;
    float vx = random(-3, 3);
    float vy = random(-7, -2);
    regen[i] = new RegenParticle(ox, oy, vx, vy, 5.0, ox, oy);
  }
}

//check if mouseClicked to trigger sparks
void mouseClicked(){
  sparksFly = true;
}

void draw() {
  background(0);
  
  //iterate through and create firework particles
  for (Particle i : particles) {
    float vx = random(-0.2, 0.2);
    float vy = random(-0.2, 0.2);
    i.applyForces(vx, vy);
    i.display();
  }
  
  //permanently change from fireworks to sparks
  //iterate through and create sparks
  if (sparksFly){
    for (Spark spark : sparks) {
      spark.move();
      spark.display();  
    }
  }
 
  
  /*
  for (RegenParticle particle : regen) {
    particle.applyForces(0.0, gravity);
    particle.regen(random(-3, 3), random(-7, -2));
    particle.display();
  }
  */
}

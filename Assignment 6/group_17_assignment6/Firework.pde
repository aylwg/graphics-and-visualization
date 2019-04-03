//adapted from https://processing.org/examples/multipleparticlesystems.html
class Firework{
   ArrayList<Particle> particles;
   Particle p;
   int rand;
   
   Firework(int num) {
     particles = new ArrayList<Particle>();   // Initialize the arraylist
     rand = int(random(0, 360));
     for (int i = 0; i < num; i++) {
       float xStart = random(-0.1, 0.1);
       Particle p = new Particle(mouseX, mouseY, xStart, -2.5, 2.0, rand);
       p.applyForces(0, 1);
       particles.add(p);  // Add "num" amount of particles to the arraylist
     }
   }
   
  void display(){
    for (Particle i : particles) {
      float vx = random(-0.15, 0.15);
      float vy = random(-0.1, 0.2);
      i.applyForces(vx, vy);
      i.display();
    } 
  }
}

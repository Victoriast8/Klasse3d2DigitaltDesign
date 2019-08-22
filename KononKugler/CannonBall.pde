class CannonBall {
  PVector pos, vel, gra = new PVector(0, 1);
  
  CannonBall(PVector pos, PVector vel) {
    this.pos = pos;
    this.vel = vel;
  }
  
  void update() {
    vel.add(gra);
    
    vel.mult(0.98);
    
    pos.add(vel);
  }
  
  void display() {
    rectMode(CENTER);
    fill(30);
    rect(pos.x, pos.y, 30, 30);
  }
}

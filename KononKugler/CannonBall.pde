class CannonBall {
  float angle, rotation;
  PVector pos, vel, gra = new PVector(0, 1);
  
  CannonBall(PVector pos, PVector vel) {
    this.pos = pos;
    this.vel = vel;
  }
  
  void update() {
    vel.add(gra);
    
    vel.mult(0.98);
    
    pos.add(vel);
    
    angle = PI/16;
  }
  
  void display() {
    rectMode(CENTER);
    fill(30);
    pushMatrix();
    translate(pos.x, pos.y);
    rotation += angle;
    rotate(rotation);
    rect(0, 0, 30, 30);
    popMatrix();
  }
}

class CannonBall {
  float angle, rotation, radius = height/25;
  PVector pos, vel, gra = new PVector(0, 1);
  PVector c1, c2, c3, c4;
  
  CannonBall(PVector pos, PVector vel) {
    this.pos = pos;
    this.vel = vel;
    c1 = new PVector(radius/2, -radius/2);
    c2 = new PVector(radius/2, radius/2);
    c3 = new PVector(-radius/2, radius/2);
    c4 = new PVector(-radius/2, -radius/2);
  }
  
  void update() {
    
    vel.add(gra);
    
    vel.mult(0.98);
    
    pos.add(vel);
    
    
    
    if (vel.mag() > 0.5){
      angle = vel.mag()/100;
    } else {
      angle = 0;
    }
    
    rotation += angle;
    
    c1.rotate(angle);
    c2.rotate(angle);
    c3.rotate(angle);
    c4.rotate(angle);
    
    if (c1.y + pos.y >= height-height/8) {
      vel.y *= -1;
      pos.y += (height-height/8)-(pos.y + c1.y);
    }
    if (c2.y + pos.y >= height-height/8) {
      vel.y *= -1;
      pos.y += (height-height/8)-(pos.y + c2.y);
    }
    if (c3.y + pos.y >= height-height/8) {
      vel.y *= -1;
      pos.y += (height-height/8)-(pos.y + c3.y);
    }
    if (c4.y + pos.y >= height-height/8) {
      vel.y *= -1;
      pos.y += (height-height/8)-(pos.y + c4.y);
    }
    
    /*if(pos.y + radius/2 >= height-height/8) {
      vel.y *= -1;
      pos.y = height-height/8-radius/2;
    }*/
  }
  
  void display() {
    rectMode(CENTER);
    fill(60);
    pushMatrix();
    translate(pos.x, pos.y);
    rotate(rotation);
    rect(0, 0, radius, radius);
    popMatrix();
  }
}

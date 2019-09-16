class Tank {
  
  PVector dir, pos, vel;
  float angle, rad, force = 0.3, rotationForce = PI/32;
  boolean up, left, right, down;
  
  Tank(PVector pos) {
    this.pos = pos;
    rad = height/25;
    vel = new PVector();
    dir = new PVector(1, 0);
  }
  
  void render() {
    pushMatrix();
    rectMode(CENTER);
    translate(pos.x, pos.y);
    rotate(angle);
    rect(0, 0, rad, rad);
    line(0, 0, rad/2, 0);
    popMatrix();
  }
  
  void update() {
    if (left) {
      dir.rotate(-rotationForce);
      angle -= rotationForce;
    }
    if (right) {
      dir.rotate(rotationForce);
      angle += rotationForce;
    }
    if (up) {
      vel.add(dir.copy().mult(force));
    }
    if (down) {
      vel.sub(dir.copy().mult(force));
    }
    vel.mult(0.9);
    pos.add(vel);
  }
  
  void shoot() {
    skudList.add(new Skud(new PVector(this.pos.x, this.pos.y), new PVector(dir.x, dir.y)));
  }
}

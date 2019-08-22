class Ball {
  PVector mouse;
  PVector dir;
  PVector location;
  PVector velocity;
  PVector gravity = new PVector(0, -0.5);
  
  Ball(PVector location) {
    this.location = location.copy();
    velocity = new PVector(random(-4, 4), 0);
  }
  
  void ballMove(int c) {
    mouse = new PVector(mouseX, mouseY);
    PVector dir = PVector.sub(mouse, location);
    
    dir.div(sq(mag(dir.x, dir.y)));
    dir.mult(c*2);
    
    velocity.add(dir);
    
    velocity.add(gravity);
    
    velocity.limit(5000/dist(mouseX, mouseY, location.x, location.y)); //Kan ændres for at løse udfordring 1
    
    location.sub(velocity);
    
    
    border();
    displayBall();
  }
  
  void displayBall() {
    ellipse(location.x, location.y, 40, 40);
  }
  
  void border() {
    if (location.x > width-20) {
      velocity.x = velocity.x * -1;
      location.x = width-21;
    } else if (location.x < 20) {
      velocity.x = velocity.x * -1;
      location.x = 21;
    }
  
    if (location.y > height-20) {
      velocity.y = velocity.y * -1;
      location.y = height-25;
    } else if (location.y < 20) {
      velocity.y = velocity.y * -1;
      location.y = 25;
    }
  
  }
}

class Bold {
  PVector acceleration;
  PVector location;
  PVector velocity;
  float r, g, b, s;

  Bold() {
    velocity = new PVector(random(-2,2),random(1,6));
    r = random(0,200);
    g = random(0,200);
    b = random(0,200);
    s = random(3,60);
    location = new PVector(random(s/2,width-s/2), random(s/2,height-s/2));
  }
  
  void update() {
    
    fill(r,g,b);
    
    acceleration = new PVector(0,0.2);
    
    velocity.add(acceleration);
    
    velocity.limit(13);
    
    if (location.x > width-s/2) {
      velocity.x = velocity.x * -1;
    } else if (location.x < s/2) {
      velocity.x = velocity.x * -1;
    }
  
    if (location.y > height-s/2) {
      velocity.y = velocity.y * -1;
    }
  
  location.add(velocity);
  
  ellipse(location.x, location.y, s, s);
  
  
  }
 
}

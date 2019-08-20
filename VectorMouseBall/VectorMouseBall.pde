PVector mouse;
PVector dir;
PVector location;
PVector velocity;

void setup() {
  size(500,500);
  location = new PVector(width/2, height/2);
  velocity = new PVector(0,0);
}

void draw() {
  background(0);
  mouse = new PVector(mouseX, mouseY);
  PVector dir = PVector.sub(mouse, location);
  
  dir.normalize();
  dir.mult(0.5);
  
  velocity.add(dir);
  
  if (location.x > width-40) {
    velocity.x = velocity.x * -1;
  } else if (location.x < 40) {
    velocity.x = velocity.x * -1;
  }
  
  if (location.y > height-40) {
    velocity.y = velocity.y * -1;
  } else if (location.y < 40) {
    velocity.y = velocity.y * -1;
  }
  
  velocity.limit(7);
  
  location.sub(velocity);
  
  ellipse(location.x, location.y, 40, 40);
}

ArrayList<CannonBall> ballList;
PVector hurtighed;

void setup() {
  fullScreen();
  ballList = new ArrayList<CannonBall>();
  strokeWeight(0);
}

void mouseClicked() {
  hurtighed = new PVector(mouseX-250, mouseY-(height/2+50));
  hurtighed.normalize();
  hurtighed.mult(30);
  ballList.add(new CannonBall(new PVector(250, height/2+50), hurtighed));
}

void draw() {
  rectMode(CORNER);
  background(255);
  
  fill(0,255,0);
  rect(0, height-height/8, width, height/8);
  
  fill(30,30,30);
  pushMatrix();
  rotate(PI/4);
  rect(width/3, height/4-110, 80, 220);
  popMatrix();
  
  fill(205, 133, 63);
  ellipse(135, height-height/8-75, 150, 150);
  
  for (int i = 0; i < ballList.size(); i++) {
    ballList.get(i).update();
    ballList.get(i).display();
  }
}

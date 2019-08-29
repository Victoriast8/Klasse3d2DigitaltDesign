ArrayList<CannonBall> ballList;
PVector hurtighed, mus;
float rad, langStang;

void setup() {
  fullScreen();
  rad = height/8;
  langStang = height/3;
  ballList = new ArrayList<CannonBall>();
  strokeWeight(1);
  mus = new PVector();
}

void mouseClicked() {
  hurtighed = new PVector(mouseX-width/5, mouseY-(height-height/4));
  hurtighed.normalize();
  hurtighed.mult(30);
  ballList.add(new CannonBall(new PVector(width/5, height-height/4), hurtighed));

}

void draw() {
  rectMode(CORNER);
  background(255);
  
  mus.x = mouseX-width/10;
  mus.y = mouseY-height-height/8-rad;
  mus.normalize();
  
  fill(60);
  pushMatrix();
  translate(width/10, height-height/8-rad);
  rotate(mus.y);
  rect(0, 0, langStang, langStang/5);
  popMatrix();
  fill(205, 133, 63);
  ellipse(width/10, height-height/8-rad, 2*rad, 2*rad);
  fill(0,255,0);
  rect(0, height-height/8, width, height/8);
  
  
  
  for (int i = 0; i < ballList.size(); i++) {
    ballList.get(i).update();
    ballList.get(i).display();
  }
}

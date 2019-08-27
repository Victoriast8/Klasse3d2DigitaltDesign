ArrayList<CannonBall> ballList;
PVector hurtighed;
PImage kanon;

void setup() {
  fullScreen();
  ballList = new ArrayList<CannonBall>();
  strokeWeight(0);
  kanon = loadImage("Konon.png");
  kanon.resize(width/6, height/4);
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
  
  image(kanon, width/20, height-height/3);
  
  fill(0,255,0);
  rect(0, height-height/8, width, height/8);
  
  
  
  for (int i = 0; i < ballList.size(); i++) {
    ballList.get(i).update();
    ballList.get(i).display();
  }
}

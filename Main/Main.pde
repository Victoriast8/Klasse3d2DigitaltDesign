ArrayList<CannonBall> ballList;
PVector startVel, direction;
float rad, cannonLength;

//setup sætter vi vores statiske variabler og settings (såsom fullscreen og strokeweight, strokeWeight er der for at forsøge programmet med forskellige strokeWeights)
void setup() {
  fullScreen();
  rad = height/8;
  cannonLength = height/3;
  ballList = new ArrayList<CannonBall>();
  strokeWeight(1);
  direction = new PVector();
}

//spawner kanonkugler hver gang man klikker
void mousePressed() {
  startVel = new PVector(mouseX-(width/5), mouseY-(height-height/8-rad));
  startVel.normalize();
  startVel.mult(20+random(-5,5));    //kanonkugler har en tilfældig hastighed
  ballList.add(new CannonBall(new PVector(width/5+direction.x*cannonLength, height-height/8-rad+direction.y*cannonLength), startVel));
}

//tegner baggrunden, jorden og kanonen og opdatere/viser kanonkuglerne
void draw() {
  rectMode(CORNER);
  background(255);
  
  fill(0,255,0);
  rect(0, height-height/8, width, height/8);
  
  direction.x = mouseX-width/5;
  direction.y = mouseY-(height-height/8-rad);
  direction.normalize();
  
  fill(60);
  pushMatrix();
  translate(width/5, height-height/8-rad);
  if(mouseX > width/5){    //kanonens rotation
    rotate(tan(direction.y));
  } else {
    rotate(-tan(direction.y)-PI);
  }
  
  rect(0, 0, cannonLength, cannonLength/5);
  popMatrix();
  fill(205, 133, 63);
  ellipse(width/5, height-height/8-rad, 2*rad, 2*rad);
  
  for (int i = 0; i < ballList.size(); i++) {
    ballList.get(i).update();
    ballList.get(i).display();
  }
}

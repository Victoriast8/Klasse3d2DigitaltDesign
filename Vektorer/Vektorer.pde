  PVector loc;
  PVector vel;
  PVector loc2;
  PVector forskydning;

void setup() {
  size(500,500);
  loc = new PVector(width/2,height/2);
  vel = new PVector(1,1);
  forskydning = new PVector(20,20);
}

void draw() {
  loc2 = loc.copy();
  vel.rotate(PI/128);
  loc.add(vel);
  
  forskydning.rotate(PI/16);
  loc2.add(forskydning);
  
  
  ellipse(loc.x,loc.y,10,10);
  ellipse(loc2.x,loc2.y,5,5);
}

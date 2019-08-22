ArrayList<Ball> ballList;
int a = 1;

void setup() {
  size(500,500);
  ballList = new ArrayList<Ball>();
}

void draw() {
  
    background(0);
  
  for (int i = 0; i < ballList.size(); i++) {
    ballList.get(i).ballMove(a);
  }
  
  }

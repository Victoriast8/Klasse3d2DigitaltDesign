Tank tank1, tank2;

void setup() {
  fullScreen();
  frameRate(60);
  tank1 = new Tank(new PVector(width/2, height/2));
  tank2 = new Tank(new PVector(width/3, height/3));
}

void draw() {
  background(255);
  
  tank1.update();
  tank2.update();
  fill(255,0,0);
  tank1.render();
  fill(0,255,0);
  tank2.render();
}

void keyPressed() {
  if (key == CODED) {
    if (keyCode == UP) {
      tank1.up = true;
    }
    if (keyCode == LEFT) {
      tank1.left = true;
    }
    if (keyCode == RIGHT) {
      tank1.right = true;
    }
    if (keyCode == DOWN) {
      tank1.down = true;
    }
  }
  
  if (key == 'w' || key == 'W') {
    tank2.up = true;
  }
  if (key == 's' || key == 'S') {
    tank2.down = true;
  }
  if (key == 'a' || key == 'A') {
    tank2.left = true;
  }
  if (key == 'd' || key == 'D') {
    tank2.right = true;
  }
}

void keyReleased() {
  if (key == CODED) {
    if (keyCode == UP) {
      tank1.up = false;
    }
    if (keyCode == LEFT) {
      tank1.left = false;
    }
    if (keyCode == RIGHT) {
      tank1.right = false;
    }
    if (keyCode == DOWN) {
      tank1.down = false;
    }
  }
  
  if (key == 'w' || key == 'W') {
    tank2.up = false;
  }
  if (key == 's' || key == 'S') {
    tank2.down = false;
  }
  if (key == 'a' || key == 'A') {
    tank2.left = false;
  }
  if (key == 'd' || key == 'D') {
    tank2.right = false;
  }
}

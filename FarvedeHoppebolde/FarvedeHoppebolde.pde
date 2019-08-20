import java.util.ArrayList;
import java.util.List;
List<Bold> Bolde;

void setup() {
  size(500,500);
  strokeWeight(1);
  Bolde = new ArrayList<Bold>();
  for(int i = 0; i < 100; i++) {
    Bolde.add(new Bold());
  }
}

void draw() {
  background(255);
  for(int i = 0; i < Bolde.size(); i++) {
    Bolde.get(i).update();
  }
}


String[] coordinates = new String[10];
int index;

void setup() {
}

void draw() {
}

void mouseClicked() {
  if (index >= 10) {
    saveStrings("posList.txt", coordinates);
  }
  String s = str(mouseX)+'\t'+str(mouseY); 
  coordinates[index] = s; 
  index++;
  println(index);
}

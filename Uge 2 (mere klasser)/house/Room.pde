class Room {
  //klssens tilstand

  boolean light; //er lyset tændt eller slukket
  String name; // rummets navn
  float xPos, yPos; // x og y pos for rummets øverste venstre hjørne
  int height = 100; // konstant højden på rummet
  int width = 100; // konstant bredden på rummet

  /*
OPG 4
   a) 
   der er 5 attributter.
   b) 
   boolean er varierende efter lyset (mousepresed)
   string name er varierende fra room til room
   float er også varierende
   int height og int width er konstante fra room til room
   c)
   
   
   */

  //konstruktør
  Room(String n, boolean onOff, float x, float y) {
    name = n; 
    light = onOff;
    xPos = x;
    yPos = y;
  }

  // settters
  void setLight(boolean l) {
    this.light = l;
  }

  void setName(String n) {
    this.name = n;
  }

  // getters
  boolean isLightOn() {
    return light;
  }

  boolean isRoomClicked(float x, float y) {
    if ((x > xPos) && (x < xPos+width) && (y>yPos) && (y < yPos+height))
      return true;
    else
      return false;
  }

  String getRoomName() {
    return name;
  }
  
  void drawRoom() {
    if (light)
      fill(205);
    else
      fill(100);
    //the upper-left corner, the third sets the width, and the fourth sets the height.
    rect(xPos, yPos, width, height);
    textSize(15);
    fill(250);
    text(name, xPos+10, yPos+30);
  }

  void drawRoof() {
    // tegn taget
    fill(50);
    triangle(50, 290, 250, 150, 450, 290);
  }
}

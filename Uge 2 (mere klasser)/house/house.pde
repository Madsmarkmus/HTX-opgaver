//lav et rum //<>// //<>// //<>//

//OPG 1: Her deklererer jeg en variable af datatypen Room... den hedder "Room".
//altså, det samme som: int i = room

//OPG 6: Jeg skal lave det til array Room house = new Room("Room", false, 100, 300);

Room[] house = new Room[6];

//OPG 2: Der er 3 funktioner, vodi setup, void draw, void mouseClicked:
//OPG 3: Der er 4 parametre: navn, lysets tilstand, x-værdi og y-værdi på start-værdi, øverste venstre hjørne.
void setup() {
  size(800, 800);
  background(205);

  house[0] = new Room("Kitchen", false, 100, 300);
  house[1] = new Room("Livingroom", false, 200, 300);
  house[2] = new Room("Toilet", false, 300, 300);
  house[3] = new Room("Bedroom", false, 100, 400);
  house[4] = new Room("Bathroom", false, 200, 400);
  house[5] = new Room("myRoom", false, 300, 400);
}

void mouseClicked() {
  background(205);
  // lav baggrund
  fill(105);
  rect(80, 680, 300, 30);
  fill(250);

  // find ud af om vi tænder eller slukker lyset
  for (int i = 0; i < house.length; i++) {
    if (house[i].isRoomClicked(mouseX, mouseY))
      if (house[i].light) {
        house[i].setLight(false);
        text("Turning off the light in "+house[i].getRoomName(), 100, 700);
      } else {
        house[i].setLight(true);
        text("Turning on the light in "+house[i].getRoomName(), 100, 700);
      }
  }
}

void draw() {
  /*
  OPG 5: Flyt taget over i Room-klassen.
   // tegn taget
   fill(50);
   triangle(50, 290, 250, 150, 450, 290);
   */
  // tegn rum
  for (int i = 0; i < house.length; i++) {
    house[i].drawRoom();
    house[i].drawRoof();
  }
  checkHouse();
  //OPG 5: her kalder jeg min void drawRoof() funktion, som ligger i Room.
  // tegn tag
}

void checkHouse() {
    //jeg ved ikke hvordan jeg får denher til ikke at loope?
    //når flere rum er tændt på samme tid, skrives de oven i hinanden???
    boolean found=false;
    for (int i=0; i < house.length; i++) {
      if (house[i].isLightOn() == true) {
        text("turn off the light in the ", 450, 420);
        text(house[i].getRoomName(),450,440);
        found = true;
      }
    }
    if (found == false) {
      text("All right! You’r ready to go!", 450, 400);
    } else {
      text("you forgot something...", 450, 400);
    }
  }

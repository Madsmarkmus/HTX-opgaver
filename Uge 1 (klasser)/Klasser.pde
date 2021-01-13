// initiering af variablen f
Firkant f;

void setup() {
  size (600, 400);
}

void draw() {
  // initiering af objektet f
  f = new Firkant();
  // kald metoden generate som laver en tilfældig x og y pos
  //f.generate();
  //det er funktionen der findes unger "Firkant", der genererer en  tilfældig x-y værdi. Vi sletter den her, og indsætter i konstruktør i "Firkant".
  // tegner firkanten på canvas
  f.drawFirkant();
}

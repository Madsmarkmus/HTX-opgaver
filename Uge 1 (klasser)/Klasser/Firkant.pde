class Firkant {
  // klassens attributter/ tilstand
  float x, y;
  
  float r, g, b;
  
  float c1, c2, c3;
  

  //konstroktøren
  Firkant() {
    generate();
  }

  // klassens metoder
  
  // find to tilfældige værdier inden for canvas størrelsen
  void generate() {
    this.x = random(600);
    this.y = random(400);
    
    this.r = random(255);
    this.g = random(255);
    this.b = random(255);
    
    this.c1 = random(600);
    this.c2 = random(400);
    this.c3 = random(300);


  }
  
  // tegn firkant på canvas
  void drawFirkant() {
    //Opgave 2, giv dem en farve
    fill(r,g,b);
    square(x, y, 100);
    //Opgave 3: Tegn en cirkel
    circle(c1, c2, c3);
    
    //Opgave 4: This at tegne en cirkel, skal jeg blot indsætte den herunder, istedet for at lave en helt ny klasse.
  }
}

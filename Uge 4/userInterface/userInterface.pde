import controlP5.*;

ControlP5 cp5;

Textfield TFX1,TFY1,TFX2,TFY2,TFX3,TFY3;
Button button1;

float numberX1 = 0.0;
float numberX2 = 0.0;
float numberX3 = 0.0;
float numberY1 = 0.0;
float numberY2 = 0.0;
float numberY3 = 0.0;

void setup (){
 
PFont font = createFont("arial", 24);
cp5 = new ControlP5(this);

  TFX1=cp5.addTextfield("inputX1");
  // nu sætter vi alle attributter for objektet ved brug af set
  TFX1.setPosition(50, 80)
    .setSize(50, 50)
    .setFont(font)
    .setColor(color(255))
    .setColorCursor(color(255))
    .setAutoClear(false)
    .setLabel("")
    ;
TFX2=cp5.addTextfield("inputX2");
  // nu sætter vi alle attributter for objektet ved brug af set
  TFX2.setPosition(150, 80)
    .setSize(50, 50)
    .setFont(font)
    .setColor(color(255))
    .setColorCursor(color(255))
    .setAutoClear(false)
    .setLabel("")
    ;
TFX3=cp5.addTextfield("inputX3");
  // nu sætter vi alle attributter for objektet ved brug af set
  TFX3.setPosition(250, 80)
    .setSize(50, 50)
    .setFont(font)
    .setColor(color(255))
    .setColorCursor(color(255))
    .setAutoClear(false)
    .setLabel("")
    ;
TFY1=cp5.addTextfield("inputY1");
  // nu sætter vi alle attributter for objektet ved brug af set
  TFY1.setPosition(50, 150)
    .setSize(50, 50)
    .setFont(font)
    .setColor(color(255))
    .setColorCursor(color(255))
    .setAutoClear(false)
    .setLabel("")
    ;
TFY2=cp5.addTextfield("inputY2");
  // nu sætter vi alle attributter for objektet ved brug af set
  TFY2.setPosition(150, 150)
    .setSize(50, 50)
    .setFont(font)
    .setColor(color(255))
    .setColorCursor(color(255))
    .setAutoClear(false)
    .setLabel("")
    ;
TFY3=cp5.addTextfield("inputY3");
  // nu sætter vi alle attributter for objektet ved brug af set
  TFY3.setPosition(250, 150)
    .setSize(50, 50)
    .setFont(font)
    .setColor(color(255))
    .setColorCursor(color(255))
    .setAutoClear(false)
    .setLabel("")
    ;

// Knappen der er knyttet til funktionen generate()
  // initiering af button1, bemærk vi binder en funktion til knappen. Hvis der trykkes på den skal den køre funktionen generate
  button1=cp5.addButton("generate");
  // nu sætter vi alle attributter for objektet ved brug af set
  button1.setPosition(350, 100)
    .setSize(180, 40)
    .setLabel("Dan trekant")
    .setFont(font)
    ;
  // set font = skrittype
  textFont(font);
}

public void settings() {
  size(1200, 800);
}

void draw() {
  background(0, 151, 156);
  fill(255);
  
  // validering af inputdata
  if (Float.isNaN(numberX1) || Float.isNaN(numberX2) || Float.isNaN(numberX3) ||Float.isNaN(numberY1)||Float.isNaN(numberY2)||Float.isNaN(numberY3)) {
    text("Kunne ikke bearbejde de opgivne data. Indsæt kun tal.", 50, 250);
  } else 
   
    fill(70);
   triangle(numberX1,numberY1,numberX2,numberY2,numberX3,numberY3);
    noFill();
    
  }


public void generate() {
  // Tallet hentes som en tekststreng i tekst-feltet input
  String inputX1 = cp5.get(Textfield.class, "inputX").getText(); // hent det som står i tekstfeltet
  inputX1 = inputX1.replace(',', '.');  // Accepter dansk komma
  numberX1 = float(inputX1); // konverter tallet til et float
  
  String inputX2 = cp5.get(Textfield.class, "inputX").getText(); // hent det som står i tekstfeltet
  inputX2 = inputX2.replace(',', '.');  // Accepter dansk komma
  numberX2 = float(inputX2); // konverter tallet til et float
  
  String inputX3 = cp5.get(Textfield.class, "inputX").getText(); // hent det som står i tekstfeltet
  inputX3 = inputX3.replace(',', '.');  // Accepter dansk komma
  numberX3 = float(inputX3); // konverter tallet til et float
  
  String inputY1 = cp5.get(Textfield.class, "inputX").getText(); // hent det som står i tekstfeltet
  inputY1 = inputY1.replace(',', '.');  // Accepter dansk komma
  numberY1 = float(inputY1); // konverter tallet til et float
  
  String inputY2 = cp5.get(Textfield.class, "inputX").getText(); // hent det som står i tekstfeltet
  inputY2 = inputY2.replace(',', '.');  // Accepter dansk komma
  numberY2 = float(inputY2); // konverter tallet til et float
  
  String inputY3 = cp5.get(Textfield.class, "inputX").getText(); // hent det som står i tekstfeltet
  inputY3 = inputY3.replace(',', '.');  // Accepter dansk komma
  numberY3 = float(inputY3); // konverter tallet til et float
  
  
  TFX1.clear(); // sletter tallet
  TFX2.clear();
  TFX3.clear();
  TFY1.clear();
  TFY2.clear();
  TFY3.clear();
}

PImage canvas;
//------ INCLINACION DEL PARALELOGRAMO----
float shearVal = 6.5;
float ySpdOffset = 0.5; 


int pGrammCount = (int)random(3, 5);
PGramme[] pGramms = new PGramme[pGrammCount]; 

Circulo c = new Circulo(); 

int LineCount = (int)random(1, 3);
Linea[] lines = new Linea[LineCount]; 


void setup() {
  size(800, 600);
  //fullScreen();
  //file.loop();
  GenPgramms(); 
  c.GenCircle();
  GenLine();

  print("lineas", LineCount, "paral", pGrammCount);

  canvas = loadImage("canvas.jpg");
  canvas.resize(width, height);
}

void draw() {
  background(canvas);

  for (int i = 0; i < pGrammCount; i++) {
    PGramme p = pGramms[i];
    p.show();
  }
  c.show(); 

  for (int i = 0; i < LineCount; i++) {
    Linea l = lines[i];
    l.show();
  }
}


void mousePressed() {
  if (mouseButton == LEFT) {
    setup();
  }
}

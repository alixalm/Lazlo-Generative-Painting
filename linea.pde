class Linea {

  color col;
  int x1, y1, x2, y2;

  Linea(color col_, int x1_, int y1_, int x2_, int y2_ ) {
    col= col_;
    x1 = x1_;
    y1 = y1_;
    x2 = x2_;
    y2 = y2_;
  }

  void show() {
    pushMatrix();
    strokeWeight(2);
    stroke(col);
    line(x1, y1, x2, y2);
    popMatrix();
  }
}

void GenLine() {

  for (int i =0; i < LineCount; i++) {
    
    float rCol = random(0, 243);
    float gCol = random(0, 180);
    float bCol = random(0, 200);
    float aCol = random(150, 255);
    int x1 = (int)random (100, 700);
    int y1 = (int)random (100, 200);
    int x2 = (int)random (200, 700);
    int y2 = (int)random (400, 500);

    lines[i]= new Linea(color(rCol, gCol, bCol, aCol), x1, y1, x2, y2);
  }
}

class PGramme {

  color c;
  float xPos;
  float yPos;
  int xSize;
  int ySize;
  int xSize2;
  int ySize2;

  PGramme(color tempC, float tempXpos, float tempYpos, int tempXSize, int tempYSize, int tempXSize2, int tempYSize2) // arguments that get passed to the instances when they're called in the draw() function
  {
    c = tempC;
    xPos = tempXpos;
    yPos = tempYpos;
    xSize = tempXSize;
    ySize = tempYSize;
    xSize2 = tempXSize2;
    ySize2 = tempYSize2;
  }

  void show() {

    pushMatrix();
    fill(c);
    noStroke();
    translate(xPos, yPos);
    shearY(PI/shearVal);
    rect(0, 0, xSize2, ySize2);
    popMatrix();
  }
}
void GenPgramms() {

  for (int i =0; i < pGrammCount; i++) {

    float rCol = random(207, 243);
    float gCol = random(45, 181);
    float bCol = random(12, 92);
    float aCol = random(100, 230);
    float xStart = random (100, 500);
    float yStart = random (100, 200);
    int xSizeStart = 0;
    int ySizeStart = 0;
    int xSizeEnd = (int) random(10, 300);
    int ySizeEnd = (int) random (10, 300);
    pGramms[i]= new PGramme(color(rCol, gCol, bCol, aCol), xStart, yStart, xSizeStart, ySizeStart, xSizeEnd, ySizeEnd);
  }
}

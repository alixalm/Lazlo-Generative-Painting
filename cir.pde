class Circulo {

  color col;
  float xPos;
  float yPos;
  int tamX;
  int tamY;
 /* float rColor = random(207, 243);
  float gColor = random(45, 181);
  float bColor = random(12, 250);
  float aColor = random(100, 255); */

  Circulo() {
  /*  col = color(rColor, gColor, bColor, aColor);
    xPos = random(100, 500);
    yPos = random(100, 500);
    tamX = int(random(50, 200));
    tamY = tamX; */
  }

  void show() {

    
    pushMatrix();
    fill(col);
    noStroke();
    ellipse(xPos, yPos, tamX, tamY);
    popMatrix();
  }

  void GenCircle() {   

    float rColor = random(207, 243);
    float gColor = random(45, 81);
    float bColor = random(12, 20);
    float aColor = random(150, 255);
    col = color(rColor, gColor, bColor, aColor);
    xPos = random(100, 500);
    yPos = random(100, 500);
    tamX = int(random(50, 200));
    tamY = tamX;
  }
}

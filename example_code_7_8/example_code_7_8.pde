float x, y, dX, dY, diam;
float x1, y1, dX1, dY1, diam1;
void setup() {
  size(800, 600);
  x = width/2;
  x1 = width*.25;
  y = height/2;
  y1 = height*.25;
  dX = random(-3, 3);
  dX1 = random(-5, 5);
  dY = random(-3, 3);
  dY1 = random(-5, 5);
  diam = 50;
  diam1 = 30;
}

void draw() {
  background(0);
  //draw ellipse
  ellipse(x, y, diam, diam);
  ellipse(x1, y1, diam1, diam1);

  //move ellipse
  x += dX;
  x1+=dX1;
  y += dY;
  y1+=dY1;

  //bounce off walls
  if (x > width || x < 0) {
    dX *= -1;
  }
  if (x1 > width || x1 < 0) {
    dX1 *= -1;
  }
  if (y > height || y < 0) {
    dY *= -1;
  }
  if (y1 > height || y1 < 0) {
    dY1 *= -1;
  }
}
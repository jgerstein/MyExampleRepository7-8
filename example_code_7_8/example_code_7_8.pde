float x, y, dX, dY, diam;
void setup() {
  size(800, 600);
  x = width/2;
  y = height/2;
  dX = random(-3, 3);
  dY = random(-3, 3);
  diam = 50;
}

void draw() {
  background(0);
  ellipse(x, y, diam, diam);
  x += dX;
  y += dY;
  if (x > width || x < 0) {
    dX *= -1;
  }
  if (y > height || y < 0) {
    dY *= -1;
  }
}
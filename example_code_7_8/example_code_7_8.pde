int count = 150;

//create arrays
float[] x = new float[count];
float[] y = new float[count];
float[] dX = new float[count];
float[] dY = new float[count];
float[] diam = new float[count];
float[] hue = new float[count];

void setup() {
  size(800, 600);
  colorMode(HSB, 360, 100, 100, 100);
  //fill arrays with values
  for (int i = 0; i < count; i++) {
    x[i] = random(width*.25, width*.75);
    y[i] = random(height*.25, height*.75);
    dX[i] = random(-3, 3);
    dY[i] = random(-3, 3);
    diam[i] = random(5, 100);
    hue[i] = random(360);
  }
}

void draw() {
  background(0, 0, 100);
  //go through arrays, and for each spot in the list, display, move, and bounce a ball
  for (int i = 0; i < count; i++) {
    fill(hue[i], 100, 100, 50);
    stroke(hue[i], 100, 80, 100);
    //draw ellipse
    ellipse(x[i], y[i], diam[i], diam[i]);


    //move ellipse
    x[i] += dX[i];

    y[i] += dY[i];


    //bounce off walls
    if (x[i] > width || x[i] < 0) {
      dX[i] *= -1;
    }

    if (y[i] > height || y[i] < 0) {
      dY[i] *= -1;
    }
  }
}
int count = 150;
int maxSize = 50;
int minSize = 5;

//create arrays
float[] x = new float[count];
float[] y = new float[count];
float[] dX = new float[count];
float[] dY = new float[count];
float[] diam = new float[count];
float[] hue = new float[count];
float[] diamChange = new float[count];

void setup() {
  size(800, 600);
  colorMode(HSB, 360, 100, 100, 100);
  //fill arrays with values
  for (int i = 0; i < count; i++) {
    diam[i] = random(minSize, maxSize);
    x[i] = random(diam[i], width-diam[i]);
    y[i] = random(diam[i], height-diam[i]);
    dX[i] = random(-3, 3);
    dY[i] = random(-3, 3);
    hue[i] = random(360);
    diamChange[i] = random(-1, 1);
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

    diam[i] += diamChange[i];
    if (diam[i] > maxSize || diam[i] < minSize) {
      diamChange[i] *= -1;
    }

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
    hue[i] += 1;
    if (hue[i] > 360) {
      hue[i] = 0;
    }
  }
}
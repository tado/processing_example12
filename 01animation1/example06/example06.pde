int NUM = 32;

float cx, cy, radius, maxSpeed, maxSize;
float[] x = new float[NUM];
float[] y = new float[NUM];
float[] angle = new float[NUM];

void setup() {
  size(480, 480);
  colorMode(HSB, 360, 100, 100, 100);
  background(0);
  noFill();

  frameRate(30);
  smooth();
  cx = width/2;
  cy = height/2;
  radius = 100;
  maxSpeed = 3;
  maxSize = 200;
  for (int i=0; i<NUM; i++) {
    angle[i] = 0;
  }
}

void draw() {
  drawFade();
  for (int i=0; i<NUM; i++) {
    float thisSpeed = (maxSpeed / NUM) *i;
    float thisSize = (maxSize / NUM) * i;

    x[i] = cx + (radius * sin(radians(angle[i])));
    y[i] = cx + (radius * cos(radians(angle[i])));
    angle[i] += thisSpeed;
    noFill();
    stroke(240, 100, 100);
    ellipse(x[i], y[i], thisSize, 
    thisSize);
  }
}

void drawFade() {
  noStroke();
  fill(0, 0, 0, 10);
  rect(0, 0, width, height);
}


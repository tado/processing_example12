import processing.opengl.*;
int NUM = 500;
float[] x = new float[NUM];
float[] y = new float[NUM];
float[] z = new float[NUM];
float[] rot = new float[NUM];
float[] rSpeed = new float[NUM];
color[] col = new color[NUM];

void setup() {
  size(600, 600, OPENGL);
  colorMode(HSB, 360, 100, 100, 100);
  frameRate(60);
  noStroke();
  smooth();
  for (int i=0; i<NUM; i++) {
    x[i] = random(width);
    y[i] = random(height);
    z[i] = random(-5000, 0);
    rot[i] = 0;
    rSpeed[i] = random(-0.1, 0.1);
    col[i] = color(random(0, 360), random(100), random(100), 80);
  }
}
void draw() {
  background(0);
  ambientLight(0, 0, 50);
  directionalLight(0, 0, 50, 1, 1, -1);
  pointLight(0, 0, 50, -30, -30, 130);
  for (int i=0; i<NUM; i++) {
    fill(color(col[i]));
    pushMatrix();
    translate(x[i], y[i], z[i]);
    rotateX(rot[i]);
    rotateY(rot[i]);
    rotateZ(rot[i]);
    box(20);
    popMatrix();
    z[i]+=20;
    rot[i] += rSpeed[i];
    if (z[i]>1000) {
      z[i] -= 5000;
    }
  }
}


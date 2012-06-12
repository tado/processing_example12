import processing.opengl.*;

float rotX, rotY;
int NUM = 1000;
float[] startX = new float[NUM];
float[] endX = new float[NUM];
float[] startY = new float[NUM];
float[] endY = new float[NUM];
float[] startZ = new float[NUM];
float[] endZ = new float[NUM];

void setup() {
  size(600, 600, OPENGL);
  colorMode(HSB, 360, 100, 100, 100);
  frameRate(60);
  rotX = 0;
  rotY = 0;
  for (int i=0; i<NUM; i++) {
    startX[i] = random(-height/2, height/2);
    endX[i] = random(-height/2, height/2);
    startY[i] = random(-height/2, height/2);
    endY[i] = random(-height/2, height/2);
    startZ[i] = random(-height/2, height/2);
    endZ[i] = random(-height/2, height/2);
  }
}

void draw() {
  background(0);
  noFill();
  stroke(200, 100, 100, 50);
  translate(width/2, height/2);
  rotateX(radians(rotX));
  rotateY(radians(rotY));
  for (int i=0; i<NUM; i++) {
    line(startX[i], startY[i], startZ[i], endX[i], endY[i], endZ[i]);
  }
  rotX = -30;
  rotY += float(mouseX) / width;
}


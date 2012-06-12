import processing.opengl.*;

float spin = 0;
int NUM = 4000;
float[] rotX = new float[NUM];
float[] rotY = new float[NUM];
float[] rotZ = new float[NUM];
color[] col = new color[NUM];

void setup() {
  size(600, 600, OPENGL);
  frameRate(60);
  colorMode(HSB, 360, 100, 100, 100);
  for (int i=0; i<NUM; i++) {
    rotX[i] = random(360);
    rotY[i] = random(360);
    rotZ[i] = random(360);
    col[i] = color(random(120, 260), 70, 100, 25);
  }
}

void draw() {
  background(0);

  noFill();
  translate(width/2, height/2);
  rotateY(radians(spin));
  for (int i=0; i<NUM; i++) {
    pushMatrix();
    rotateZ(radians(rotZ[i]));
    rotateY(radians(rotY[i]));
    rotateX(radians(rotX[i]));
    stroke(col[i]);
    line(-mouseX/4, -mouseY/4, width/3, mouseX/4, mouseY/4, width/3);
    popMatrix();
  }
  spin += float(mouseX) / width;
}


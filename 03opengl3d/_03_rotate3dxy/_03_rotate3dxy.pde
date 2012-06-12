import processing.opengl.*;

float rotX=0, rotY=0, rotZ=0;
void setup() {
  size(600, 600, OPENGL);
  colorMode(HSB, 360, 100, 100, 100);
  frameRate(60);
  smooth();
  fill(200, 100, 100);
  noStroke();
  rectMode(CENTER);
}
void draw() {
  background(0);
  translate(width/2, height/2);
  rotateX(radians(rotX));
  rotateY(radians(rotY));
  rotateZ(radians(rotZ));
  rect(0, 0, width/2, width/2);
  rotX += mouseX/50.0;
  rotY += mouseY/50.0;
}


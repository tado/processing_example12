import processing.opengl.*;

void setup() {
  size(600, 600, OPENGL);
  colorMode(HSB, 360, 100, 100, 100);
  frameRate(60);
  noStroke();
  smooth();
}

void draw() {
  background(0);
  translate(width/2, height/2);
  ambientLight(0, 0, 50);
  directionalLight(0, 0, 50, 1, 1, -1);
  pointLight(0,0,50,-30,-30,200);
  fill(0,0,100);
  sphere(100);
}

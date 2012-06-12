import processing.opengl.*;

float angle = 0;   
int NUM = 500;     
float offset = 360.0/float(NUM);          
color[] colors = new color[NUM];

void setup() { 
  size(600, 600, OPENGL);
  noStroke();
  colorMode(HSB, 360, 100, 100, 100);
  frameRate(60);
  for (int i=0; i<NUM; i++) {
    colors[i] = color(offset*i, 70, 100, 25);
  }
}

void draw() {
  background(0);
  ambientLight(0, 0, 50);
  directionalLight(0, 0, 100, -1, 0, 0);
  translate(width/2, height/2, -20); 
  for (int i=0; i<NUM; i++) {
    pushMatrix();
    fill(colors[i]);
    rotateY(radians(angle * mouseX/float(width) + offset*i));
    rotateX(radians(angle * mouseY/float(height) +offset*i));
    rotateZ(radians(angle / 10.0 + offset*i));
    box(width/2);
    popMatrix();
  }
  angle += 1.0;
} 


import processing.opengl.*;

int NUM = 256;
float[] x = new float[NUM];
float[] y = new float[NUM];
float phase, speed, radius, ratio;

void setup() {
  size(600, 600, OPENGL);
  frameRate(60);
  background(0);
  speed = 2.0;
  radius = height/4.0;
  ratio = 2.0/3.0;
}

void draw() {
  fade();
  translate(width/2, height/2);

  phase += speed;

  for (int i = 0; i < NUM; i++) {
    x[i] = cos(radians(phase) / NUM * (i + 1)) * radius;
    y[i] = sin(radians(phase) / NUM * (i + 1) * ratio) * radius;

    noFill();
    stroke(0, 127, 255, 100);
    rectMode(CENTER);
    pushMatrix();
    translate(x[i], y[i]);
    rotate(radians(i * 0.1));
    //rect(0, 0, radius/float(NUM) * i, radius/float(NUM) * i);
    line(0, - radius/float(NUM) * i, 0, radius/float(NUM) * i);
    line(- radius/float(NUM) * (NUM-i), 0, radius/float(NUM) * (NUM-i), 0);
    popMatrix();
  }
}

void fade() {
  noStroke();
  fill(0, 31);
  rectMode(CORNER);
  rect(0, 0, width, height);
}

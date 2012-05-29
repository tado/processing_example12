float x, y;
float phase, speed;

void setup() {
  size(600, 600);
  frameRate(60);
  background(0);
  speed = 2.0;
}

void draw() {
  fade();
  translate(0, height/2);

  phase += speed;
  x = phase;
  y = sin(radians(phase)) * height/4.0;

  if (phase > width) {
    phase = 0;
  }

  fill(0, 127, 255);
  ellipse(x, y, 5, 5);
}

void fade() {
  noStroke();
  fill(0, 15);
  rect(0, 0, width, height);
}


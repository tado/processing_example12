float x, y;
float phase, speed, radius;

void setup() {
  size(600, 600);
  frameRate(60);
  background(0);
  speed = 2.0;
  radius = height / 4.0;
}

void draw() {
  fade();
  translate(width/2, height/2);

  phase += speed;
  x = cos(radians(phase)) * radius;
  y = sin(radians(phase)) * radius;

  fill(0, 127, 255);
  ellipse(x, y, 5, 5);
}

void fade() {
  noStroke();
  fill(0, 15);
  rect(0, 0, width, height);
}


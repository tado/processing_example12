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
  translate(width/2, 0);
  
  phase += speed;
  x = sin(radians(phase)) * height/4.0;
  y = phase;
  
  if (phase > width) {
    phase = 0;
  }
  
  fill(0, 127, 255);
  ellipse(x, y, 5, 5);
}

void fade(){
  noStroke();
  fill(0, 15);
  rect(0, 0, width, height);
}

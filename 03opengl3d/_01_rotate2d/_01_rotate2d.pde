float rot=0;

void setup() {
  size(600, 600);
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
  rotate(radians(rot));
  rect(0, 0, width/2, width/2);
  rot += mouseX/50.0;
}


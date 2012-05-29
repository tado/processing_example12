float x, y;
float xSpeed, ySpeed;

//初期化関数

void setup() {
  size(480, 480);
  frameRate(30);
  colorMode(HSB, 
  360, 100, 100, 100);
  noStroke();
  fill(180, 100, 80, 80);
  x = random(width);
  y = random(height);
  xSpeed = random(-10, 10);
  ySpeed = random(-10, 10);
}

//メインループ

void draw() {
  background(0);
  ellipse(x, y, 40, 40);

  x += xSpeed;
  y += ySpeed;
  if (x > width || x < 0) {
    xSpeed *= -1;
  }
  if (y > height || y < 0) {
    ySpeed *= -1;
  }
}


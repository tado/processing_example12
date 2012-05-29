int BALL_NUM = 100;
float[] x = new float[BALL_NUM];
float[] y = new float[BALL_NUM];
float[] xSpeed = new float[BALL_NUM];
float[] ySpeed = new float[BALL_NUM];
float[] bSize = new float[BALL_NUM];
color[] bColor = new color[BALL_NUM];

//初期化関数
void setup() {
  size(480, 480);
  smooth();
  frameRate(60);
  colorMode(HSB, 360, 100, 100, 100);
  noStroke();
  for (int i=0; i<BALL_NUM; i++) {
    x[i] = random(width);
    y[i] = random(height);
    xSpeed[i] = random(-5, 5);
    ySpeed[i] = random(-5, 5);
    bSize[i] = random(20, 60);
    bColor[i] = color(random(180, 240), 100, 60, 70);
  }
}

//メインループ
void draw() {
  background(0);
  for (int i=0; i<BALL_NUM; i++) {
    fill(bColor[i]);
    ellipse(x[i], y[i], bSize[i], bSize[i]);
    x[i] += xSpeed[i];
    y[i] += ySpeed[i];
    if (x[i] > width || x[i] < 0) {
      xSpeed[i] *= -1;
    }
    if (y[i] > height || y[i] < 0) {
      ySpeed[i] *= -1;
    }
  }
}


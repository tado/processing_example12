int BAR_NUM = 100;
float[] x = new float[BAR_NUM];
float[] xSpeed = new float[BAR_NUM];
float[] bWidth = new float[BAR_NUM];
color[] bColor = new color[BAR_NUM];

//初期化関数
void setup() {
  size(800, 400);
  frameRate(60);
  smooth();
  colorMode(HSB, 360, 100, 100, 100);
  noStroke();
  for (int i=0; i<BAR_NUM; i++) {
    x[i] = random(width);
    xSpeed[i] = random(-1, 1);
    bWidth[i] = random(width/2);
    bColor[i] = color(random(360), 80, 80, 25);
  }
}

//メインループ
void draw() {
  background(0);
  for (int i=0; i<BAR_NUM; i++) {
    fill(bColor[i]);
    rect(x[i], 0, bWidth[i], height);
    x[i] += xSpeed[i];
    if (x[i] > width || x[i] < -bWidth[i]) {
      xSpeed[i] *= -1;
    }
  }
}


float x, y, cx, cy;
float phase, speed, radius, bSize;
int counter;

//初期化
void setup() {
  size(480, 480);
  background(0);
  frameRate(60);
  smooth();
  cx = width/2;
  cy = height/2;
  phase = 0;
  radius = width/3;
  speed = 2.0;
  bSize = 10;
}

//メインループ
void draw() {
  drawFade();
  //円の軌道を計算
  //x = counter % width;
  x = cx + (radius * sin(radians(phase)));
  y = cx + (radius * cos(radians(phase)));
  phase += speed;
  counter += speed;
  noStroke();
  fill(0, 0, 255);
  ellipse(x, y, bSize, bSize);
}

//画面全体を半透明の黒で塗り潰す関数
void drawFade() {
  noStroke();
  fill(0, 3);
  rect(0, 0, width, height);
}


int NUM = 32;
float[] x = new float[NUM];
float[] y = new float[NUM];
float phase, speed, radius;

void setup() {
  size(600, 600);
  frameRate(60);
  background(0);
  speed = 2.0;
  radius = height/4.0;
}

void draw() {
  fade();
  translate(width/2, height/2);
  
  phase += speed;
  
  for (int i = 0; i < NUM; i++) {
    x[i] = cos(radians(phase) / NUM * (i + 1)) * radius;
    y[i] = sin(radians(phase) / NUM * (i + 1)) * radius;
    
    fill(0, 127, 255);
    ellipse(x[i], y[i], 5, 5);
  }
}

void fade() {
  noStroke();
  fill(0, 63);
  rect(0, 0, width, height);
}


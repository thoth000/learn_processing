void setup() {
  size(500, 500);
  noStroke();
  background(255, 255, 255);
}

void draw() {
  int k=50;
  float size=30;
  float x = width/2+k*randomGaussian();
  float y = height/2+k*randomGaussian();

  float r = random(100, 255);
  float g = random(100, 255);
  float b = random(100, 255);
  fill(r, g, b, 80);

  circle(x, y, size);
}

void mouseClicked(){
  saveFrame("img.png");
}

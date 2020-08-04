float x = random(0, width);
float y = random(0, height);

float speedX = random(4,5);
float speedY = random(3,4);
boolean isMoved = true;

void setup() {
  size(500, 500);
  background(0);
}

void draw() {
  if (isMoved) {
    ball(40, color(228, 44, 100), true);
    ball(30, color(45, 36, 138), false);
    fill(0, 0);
    rect(0, 0, width, height);
  }
}

void ball(int r, color c, boolean isBall1) {
  noStroke();
  fill(c);
  if (isBall1) {
    circle(x, y, r);
    x += speedX;
    y += speedY;

    if (x < 0 || x > width) {
      speedX *= -1;
    }
    if (y < 0 || y > height) {
      speedY *= -1;
    }
  } else {
    circle(width-x, height-y, r);
  }
}

void mouseClicked() {
  saveFrame("img_#####.png");
}

void keyPressed() {
  isMoved = !isMoved;
}

void setup() {
  size(500, 500);
}

void draw(){
  float top = PI/2000*(500-mouseY);
  float bottom = PI*2-top;
  background(0,0,0);
  fill(255, 255, 0);
  arc(250, 250, 300, 300, top, bottom, PIE);
  fill(0,0,0);
  circle(280,150,50);
}

void mouseClicked(){
  saveFrame("packman.png");
}

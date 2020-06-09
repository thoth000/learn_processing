void setup() {
  size(500, 500);
  stroke(255, 255, 255);
  background(0, 0, 0);
}

int circlesize=30;

void draw() {
  if (mousePressed) {
    line(pmouseX, pmouseY, mouseX, mouseY);
  }
}

void mousePressed(){
  fill(0,255,255);
  circle(mouseX,mouseY,circlesize);
}

void mouseReleased(){
  fill(255,0,255);
  circle(mouseX,mouseY,circlesize);
  circlesize+=10;
}

void keyPressed(){
  if(key=='1'){
    circlesize=10;
  }
  if(key=='0'){
    background(0,0,0);
  }
  if(key=='s'||key=='S'){
    saveFrame("image.png");
  }
}

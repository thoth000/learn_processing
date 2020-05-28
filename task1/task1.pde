void setup() {
  size(500, 500);
  noStroke();
  color c1= color(180, 100, 255);
  color c2= color(255, 160, 0);
  for (float i=0; i<height; i+=5) {
    for (float j=0; j<width; j+=5) {
      color c=lerpColor(c1, c2, (i+j)/(height+width));
      fill(c);
      rect(j, i, 5, 5);
    }
  }
}

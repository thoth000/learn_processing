void setup() {
  size(500, 500);
  noStroke();
  color c1= color(180, 100, 255);//top_left_color
  color c2= color(255, 150, 50);//bottom_right_color
  float size=5.0;
  for (float i=0.0; i<height; i+=size) {
    for (float j=0.0; j<width; j+=size) {
      color c=lerpColor(c1, c2, (i+j)/(height+width));
      fill(c);
      rect(j, i, size, size);
    }
  }
}

float x;
float y;

void setup () {
  size(600, 600);
}

void draw() {
  x = random(600);
  y = random(600);
  if (x <= 300 && y <= 300) {
    fill(125, 0, 0);
    circle(x, y, 30);
  }
  if (x <=300 && y > 300) {
    fill (12, 34, 190);
    circle(x, y, 30);
  }
  if (x > 300 && y <= 300) {
    fill(0, 123, 0);
    circle( x, y, 30);
  }

if (x > 300 && y > 300){
  fill(0, 0, 100);
  circle( x, y, 30);
}
}

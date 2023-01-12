// This is a simple yet fun and cool code. 
//You have a cool triangular shape that goes through 4 quadrants. But, when that ball reaches the bottom of the black rectangle. 
//The ball turns into a white color, that has a perfect contrast with the black rectangle.
// Some of the code was from a random quadrant
int r = 0;
int g = 0;
int b = 0;
float x;
float y;
boolean White;
void setup () {
  size(600, 600);
  frameRate(3);
}
void draw () {
  background(233, 245, 66);
  beginShape() ;
  vertex(90, 50);
  vertex(100, 90);
  vertex(120, 100);
  vertex(135, 120);
  vertex(135, 321);
  vertex(300, 128);
  vertex(200, 127);
  vertex(100, 125);
  vertex(90, 150);
  vertex(90, 50);
  endShape ();
  fill(r, g, b);
  rect(0, 400, 600, 200);
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

  if (x > 300 && y > 400) {
    fill(255, 255, 255);
    circle( x, y, 30);
  }
}

void mousePressed() {
  r = int(random(256));
  g = int(random(256));
  b = int(random(256));
  fill(r, g, b);
  rect(0, 400, 600, 200);
}

int x = 50;
int y = 50;
int dy = 3;
int dx = 2;
int r = 255;
int g = 91;
int b = 165;

void setup () {
  size(1000, 1000);
}

void draw () {
  background(r, g, b);
  circle(x, y, 100);
  x = x + dx;
  y = y + dy;
  if (x == 950) {
  dx = -3;
  r = 0;
  g = 0;
  b = 0;
  }
  if (y == 50) {  
  dy = 2;
  r = 255;
  g = 91;
  b = 165;
  }
  if (y == 950){
  dy = -3;
  r = 0;
  g = 255;
  b = 0;
  }
  if (x == 50) {
  dx = 3;
  r = 0;
  g = 0;
  b = 255;
  }
}
      
  
  
  // pink = top (255, 91, 165)
  // green = right
  //black = bottom
  // blue = left
    

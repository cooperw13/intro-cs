//I used some of Gray's code as he is my partner in the buildings assignment.
void setup() {
  size(1000, 1000);
  strokeWeight(10);
  background(0);
  rectMode(CENTER);
  for(int y = 0; y < 1000; y = y + 200) {
    for(int x = 0; x < 1000; x = x + 200) {
  building(x + 70, y + 100, int(random(99, 200)), int(random(2, 10)), int(random(2, 30)), true);
    }
  }
}

void building(float xCenter, float yBottom, float w, int numFloors, int numWindows, boolean roof) {
  float floorHeight = 30;
  float buildingHeight = numFloors * floorHeight;
  int numSpaces = numWindows * 2 + 1;
  int xTimer = 0;
  int yTimer = 0;
  float xIncreaser = numWindows - 1;
  float yIncreaser = 3;
  stroke(70);
  fill(100);
  rect(xCenter, yBottom, w, buildingHeight);
  if (roof == true) {
    triangle(xCenter - w/2, yBottom - buildingHeight/2, xCenter, yBottom - buildingHeight/2 - floorHeight, xCenter + w/2, yBottom - buildingHeight/2);
  }
  stroke(0);
  fill(90, 40, 110);
  rect(xCenter, yBottom + buildingHeight/2 - floorHeight/2, w/4, floorHeight);
  line(xCenter, yBottom + buildingHeight/2 - floorHeight, xCenter, yBottom + buildingHeight/2);
  fill(0, 90, 05);
  while (xTimer < numWindows) {
    while (yTimer < numFloors - 1) {
      square(xCenter - w/numSpaces * xIncreaser, yBottom + buildingHeight/2 - yIncreaser * floorHeight/2, w/numSpaces);
      yTimer = yTimer + 1;
      yIncreaser = yIncreaser + 2;
    }
    yTimer = 0;
    yIncreaser = 3;
    xTimer = xTimer + 1;
    xIncreaser = xIncreaser - 2;
  }
}

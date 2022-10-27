int gray = 0;
void setup() { // called once
  size(1,000 , 1,000);
}

void draw() { // REPEATS
square(0, 0, 200);
gray = gray + 1;
}

void setup () {
size(700, 700);
}

void draw () {
  fill(300, 210, 88);
  connect ();
  fill(300, 210, 88);
  
  translate(300, 300);
  connect ();
  
  fill(300, 210, 88);
  translate (-300, 30);
  connect ();
}
void connect () {
  //Square
  rect(200, 200, 100, 100);
  
  //Headshape
  fill(210);
  ellipse(75, 90, 30, 20);
ellipse(125, 90, 30, 20);
fill(0);
ellipse(84, 92, 10, 10);
ellipse(117, 92, 10, 10);

//mouth
fill(255, 0, 90);
arc(90, 120, 230, 100, 100, 210);
line(200, 125, 200, 300);

//teeth
fill(255, 255, 255);
rect(80, 20, 20, 30);
rect(10, 10, 24, 20);
}

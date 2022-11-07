void setup() {
  size(1000, 1000);
  background(255, 0, 217);
}
  
void draw() {

//face:
fill(255, 140, 0);
triangle( 100, 200, 300, 200, 200, 600);
//hair:
line( 400, 250, 200, 200);
line( 400, 200, 200, 200);
line( 400, 300, 200, 200);
line( 400, 350, 200, 200);
line( 400, 100, 200, 200);
line( 400, 150, 200, 200);
line( 50, 150, 200, 200);
line( 50, 200, 200, 200);
line( 50, 450, 200, 200);
line( 50, 400, 200, 200);
line( 50, 300, 200, 200);
line( 50, 10, 200, 200);
line( 50, 150, 200, 200);
line( -150, 350, 200, 200);
line( -150, 250, 200, 200);
//eyes:
fill( 255, 255, 255);
circle( 150, 350, 70);
circle( 200, 350, 70);
fill( 1, 1, 1);
circle( 130, 350, 25);
circle( 180, 350, 25);
//eyebrows:
fill(33, 32, 32);
rect( 100, 300, 150, 15);
//mouth:
circle( 200, 450, 55);
  strokeWeight(15);
fill(255, 247, 0);

{
translate (350,50);
fill(55, 66, 789);
stroke(16, 70, 224);
rect(150, 225, 300, 300);
// this is a body
fill(22, 44, 43);
rect(200, 700, 200, 60);
// this is a head
circle(300,400, 222);
// this is the lower body
rect(200, 700, 65, 100);
rect(335, 700, 65, 100);
// this is the legs
fill(66, 88, 90);
circle(250, 100, 50);
circle(355, 100, 50);
// this is the eyes, I used two white cricles for it
strokeWeight(25);
line(400, 250, 400, 280);
// this is the right arm of the robot
line(400, 280, 110, 520);
// this is the left arm of the robot
circle(400, 550, 30);
// this is the left fist of the robot
circle( 520, 530, 30);
// this is the right first of the robot
arc(300, 200, 200, 100, 0, 3.14);
//this is the bottom lip of the mouth of the robot
strokeWeight(25);
line(350, 170, 250, 170);
// this is the top lip of the mouth of the robot

  }
}
  

  
  

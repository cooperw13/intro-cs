// credit to Kader for some of the code, helped me a lot
int r;
int size = 222;
int dx = 3;
int rotate;
int degrees = 0;
void setup() {
size(850, 850);
}
void draw(){
  background(76, 187, 23);
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
strokeWeight(10);
push();
translate(400, 280);
degrees = degrees + 1;
rotate(radians(degrees));
line(0, 0, -290, 300);
pop();
line(400, 280, 110, 520);
// this is the left arm of the robot
circle(350, 30, 30);
// this is the left fist of the robot
circle( 300, 100, 100);
// this is the right first of the robot
arc(300, 200, 200, 100, 0, 3.14);
//this is the bottom lip of the mouth of the robot
strokeWeight(20);
line(350, 170, 250, 170);
// this is the top lip of the mouth of the robot\
fill(255, 0, 0);
circle(300, 400, size);
size = size + dx;
if (size >= 600)
dx = -3;

}

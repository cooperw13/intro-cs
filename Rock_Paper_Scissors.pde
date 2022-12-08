 String choice = "";
String comptext = "";
float compchoice = 0;
String outcome = "";
void setup() {
  rectMode(CENTER);
  textAlign(CENTER);
  size(600, 600);
}

//their choice
void draw() {
  background(100, 25, 25);
  line(200, 0, 200, 300);
  line(400, 0, 400, 300);

  //first column

  textSize(40);
  fill(255);
  rect(100, 50, 150, 80);
  rect(100, 150, 150, 80);
  rect(100, 250, 150, 80);

  fill(0);
  text("Rock", 100, 65);
  text("Paper", 100, 165);
  text("Scissors", 100, 265);

  //second column

  textSize(25);
  text("You Choose:", 300, 100);

  text(choice, 300, 150);
  //third column

  textSize(25);
  text("They Choose:", 500, 100);
  text(comptext, 500, 150);
  
  //Win or Lose
  textSize(75);
  fill(255,0,0);
  text (outcome, 400,250);
  if (choice == "rock" && comptext == "scissors"){
    outcome = "You Win!";
  }
    if (choice == "paper" && comptext == "rock"){
    outcome = "You Win!";
  }
    if (choice == "scissors" && comptext == "paper"){
    outcome = "You Win!";
  }
  
    if (choice == "paper" && comptext == "scissors"){
    outcome = "You Lose!";
  }
    if (choice == "scissors" && comptext == "rock"){
    outcome = "You Lose!";
  }
    if (choice == "rock" && comptext == "paper"){
    outcome = "You Lose!";
  }
  
     if (choice == "rock" && comptext == "rock"){
    outcome = "You Tie!";
  }
  
     if (choice == "paper" && comptext == "paper"){
    outcome = "You Tie!";
  }
     if (choice == "scissors" && comptext == "scissors"){
    outcome = "You Tie!";
  }
  
  }


//your choice
void mousePressed() {

  if (mouseX>25 && mouseX<175 && mouseY>10 && mouseY<90) {
    choice = "rock";
  }

  if (mouseX>25 && mouseX<175 && mouseY>110 && mouseY<190) {
    choice = "paper";
  }

  if (mouseX>25 && mouseX<175 && mouseY>210 && mouseY<290) {
    choice = "scissors";
  }
  //computer choice
  compchoice = floor(random(1, 4));
  if (compchoice == 1) {
    comptext = "rock";
  }

  if (compchoice == 2) {
    comptext = "paper";
  }

  if (compchoice == 3) {
    comptext = "scissors";
  }
  
  
}

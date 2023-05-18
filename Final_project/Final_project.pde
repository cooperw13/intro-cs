// Game Variables
int level = 1;
int score = 0;
int time = 0;
boolean gameStarted = false;
boolean gameEnded = false;

// Array of targets
int[] targets;

void setup() {
  size(900, 900);
  frameRate(60);
  targets = new int[level + 3];
  resetTargets();
}

void draw() {
  background(220);

  if (!gameStarted) {
    displayStartScreen();
    return;
  }

  if (gameEnded) {
    displayEndScreen();
    return;
  }

  playGame();
  displayScore();
  displayTime();
}

void mousePressed() {
  if (!gameStarted) {
    gameStarted = true;
    return;
  }

  if (gameEnded) {
    resetGame();
    return;
  }

  checkTargetClicked();
}

void resetGame() {
  level = 1;
  score = 0;
  time = 0;
  resetTargets();
  gameEnded = false;
}

void resetTargets() {
  for (int i = 0; i < targets.length; i++) {
    targets[i] = int(random(50, height - 50));
  }
}

void playGame() {
  time++;
  if (time > 600) {
    endGame();
  }

  for (int i = 0; i < targets.length; i++) {
    int x = i * (width / targets.length);
    ellipse(x, targets[i], 30, 30);
  }
}

void checkTargetClicked() {
  for (int i = 0; i < targets.length; i++) {
    int x = i * (width / targets.length);
    float distance = dist(mouseX, mouseY, x, targets[i]);
    if (distance < 15) {
      score += 10;
      targets[i] = -100;
      break;
      
      
    }
  }
}

void endGame() {
  gameEnded = true;
}

void displayStartScreen() {
  textAlign(CENTER, CENTER);
  textSize(32);
  fill(0);
  text("Click to Start", width / 2, height / 2);
}

void displayEndScreen() {
  textAlign(CENTER, CENTER);
  textSize(32);
  fill(0);
  text("Game Over\nScore: " + score, width / 2, height / 2);
  text("Click to Restart", width / 2, height / 2 + 50);
}

void displayScore() {
  textAlign(LEFT);
  textSize(20);
  fill(0);
  text("Score: " + score, 10, 30);
}

void displayTime() {
  textAlign(LEFT);
  textSize(20);
  fill(0);
  text("Time: " + (int)(time / 60), 10, 60);
}

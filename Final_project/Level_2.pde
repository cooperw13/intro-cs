// Game Variables
int level = 1;
int score = 0;
int time = 0;
boolean gameStarted = false;
boolean gameEnded = false;

// Array of targets
int[] targets;

void setup() {
  size(400, 400);
  frameRate(60);
  targets = new int[level + 3];
  resetTargets();
}

void draw() {
  background(220);

  if (!gameStarted) {
    displayStartScreen();
  } else if (gameEnded) {
    displayEndScreen();
  } else {
    playGame();
    displayScore();
    displayTime();
  }
}

void mousePressed() {
  if (!gameStarted) {
    gameStarted = true;
  } else if (gameEnded) {
    resetGame();
  } else {
    checkTargetClicked();
  }
}

void resetGame() {
  level = 1;
  score = 0;
  time = 0;
  resetTargets();
  gameEnded = false;
}

void resetTargets() {
  targets = new int[level + 3];
  for (int i = 0; i < targets.length; i++) {
    targets[i] = int(random(50, height - 50));
  }
}

void playGame() {
  time++;
  if (time > 600) {
    if (level == 1) {
      level = 2;
      resetTargets();
      time = 0;
    } else {
      endGame();
    }
  }

  for (int i = 0; i < targets.length; i++) {
    int x = i * (width / targets.length);
    ellipse(x, targets[i], 30, 30);
    targets[i] += level; // Move the targets downward faster in Level 2

    if (targets[i] > height) {
      endGame();
    }
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
  if (level == 1) {
    text("Level 1 Completed!\nClick to Start Level 2", width / 2, height / 2);
  } else {
    text("Game Over\nScore: " + score, width / 2, height / 2);
    text("Click to Restart", width / 2, height / 2 + 50);
  }
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
  text("Time: " + (int)(time)

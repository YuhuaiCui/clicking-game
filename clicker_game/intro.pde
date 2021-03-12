//button variables
int startX = 400;
int startY = 450;
int startW = 200;
int startH = 100;
int shopX = 75;
int shopY = 575;
int shopW = 150;
int shopH = 150;
int optionsX = 325;
int optionsY = 575;
int optionsW = 150;
int optionsH = 150;
int exitX = 550;
int exitY = 575;
int exitW = 150;
int exitH = 150;

void intro() {
  gameover.pause();
  theme.play();
  background(red);

  //game text
  textSize(125);
  text("Clicker.io", 400, 200);

  //start button
  rectButton(startX, startY, startW, startH, brown);
  fill(sand);
  textSize(25);
  text("Start", startX, startY);
  
  //shop button
  circularImageTactile(10, shopX, shopY, shopW, shopH);

  //menu button
  circularImageTactile(3, optionsX, optionsY, optionsW, optionsH);
  
  //exit button
   circularImageTactile(13, exitX, exitY, exitW, exitH);
}

void introClicks() {
  if (mouseX > startX - (startW/2) && mouseX < startX + (startW/2) && mouseY > startY - (startH/2) && mouseY < startY + (startH/2) ) {
    mode = GAME;
    score = 0;
    lives = 3;
    vx = random (-5, 5);
    vy = random (-5, 5);
  }
  if (dist(mouseX, mouseY, shopX + (shopW/2), shopY + (shopH/2)) <= shopW/2) {
    mode = SHOP;
  }
  if (dist(mouseX, mouseY, optionsX + (optionsW/2), optionsY + (optionsH/2)) <= optionsW/2) {
    mode = OPTIONS;
  }
  if (dist(mouseX, mouseY, exitX + (exitW/2), exitY + (exitH/2)) <= exitW/2) {
    exit();
  }
}

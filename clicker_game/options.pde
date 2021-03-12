//button variables
int homeX = 150;
int homeY = 25;
int homeW = 150;
int homeH = 150;
int settingsX = 150;
int settingsY = 175;
int settingsW = 150;
int settingsH = 150;
int musicX = 150;
int musicY = 325;
int musicW = 150;
int musicH = 150;
int soundX = 150;
int soundY = 475;
int soundW = 150;
int soundH = 150;
int infoX = 150;
int infoY = 625;
int infoW = 150;
int infoH = 150;
int musicSetting = 5;
int soundSetting = 12;
boolean soundToggle, musicToggle;

void options() {
  background(aqua);
  
  //home button
  circularImageTactile(1, homeX, homeY, homeW, homeH);
  
  //settings(target customization) button
  circularImageTactile(14, settingsX, settingsY, settingsW, settingsH);
  
  //music button
  circularImageTactile(musicSetting, musicX, musicY, musicW, musicH);
  
  //sound button
  circularImageTactile(soundSetting, soundX, soundY, soundW, soundH);
  
  //info button
  circularImageTactile(2, infoX, infoY, infoW, infoH);
}

void optionsClicks() {
 mode = GAMEOVER; 
}

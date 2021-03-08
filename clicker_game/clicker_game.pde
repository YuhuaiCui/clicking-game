import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//Daniel Cui
//Block 1-4B

//mode variables
int mode;
final int INTRO = 0;
final int GAME = 1;
final int PAUSE = 2;
final int GAMEOVER = 3;

//target variables
float x, y, d;
float vx, vy;
int score, lives;

//sound variables
Minim minim;
AudioPlayer theme, coin, bump, gameover;

//color pallettes
color aqua = #73C5AA;
color sand = #C6C085;
color blush = #F9A177;
color red = #F76157;
color brown = #4C1B05;

void setup() {
  size(800, 800);
  mode = INTRO;
  textSize(25);
  textAlign(CENTER, CENTER);
  
  //target initialization
  x = width/2;
  y = height/2;
  d = 100;
  vx = random (-5, 5);
  vy = random (-5, 5);
  score = 0;
  lives = 3;
  
  //minim
  minim = new Minim(this);
  theme = minim.loadFile("mario bros theme.mp3");
  coin = minim.loadFile("coin.wav");
  bump = minim.loadFile("bump.wav");
  gameover = minim.loadFile("gameover.wav");
} //end of setup

void draw() {
  if (mode == INTRO) {
    intro();
  } else if (mode == GAME) {
    game();
  } else if (mode == PAUSE) {
    pausescreen();
  } else if (mode == GAMEOVER) {
    gameover();
  } else {
    println("Error: Mode = " + mode);
  }
} //end of draw

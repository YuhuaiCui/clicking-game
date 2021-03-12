//Daniel Cui
//1-4B
//I <3 DRY Code


//minim stuff - dont touch
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//mode variables
int mode;
final int INTRO = 0;
final int GAME = 1;
final int PAUSE = 2;
final int GAMEOVER = 3;
final int OPTIONS = 4;
final int HELP = 5;
final int SHOP = 6;

//target variables
float x, y, d;
float vx, vy;
int score, highScore, lives;

//sound variables
Minim minim;
AudioPlayer theme, coin, bump, gameover;

//color pallettes
color aqua = #73C5AA;
color sand = #C6C085;
color blush = #F9A177;
color red = #F76157;
color brown = #4C1B05;
color grey = #656565;
color darkgrey = #4C4C4C;
color lightgrey = #EFEFEF;

//images
PImage[] images;

void setup() {
  size(800, 800);
  mode = INTRO;
  textSize(25);
  textAlign(CENTER, CENTER);
  rectMode(CENTER);

  //target initialization
  x = width/2;
  y = height/2;
  d = 100;
  vx = random (-5, 5);
  vy = random (-5, 5);
  score = 0;
  highScore = 0;
  lives = 3;

  //minim
  minim = new Minim(this);
  theme = minim.loadFile("mario bros theme.mp3");
  coin = minim.loadFile("coin.wav");
  bump = minim.loadFile("bump.wav");
  gameover = minim.loadFile("gameover.wav");

  images = new PImage[30];

  imageLoading (0, "0");
  imageLoading (1, "1");
  imageLoading (2, "2");
  imageLoading (3, "3");
  imageLoading (4, "4");
  imageLoading (5, "5");
  imageLoading (6, "6");
  imageLoading (7, "7");
  imageLoading (8, "8");
  imageLoading (9, "9");
  imageLoading (10, "10");
  imageLoading (11, "11");
  imageLoading (12, "12");
  imageLoading (13, "13");
  imageLoading (14, "14");
  imageLoading (15, "15");
  imageLoading (16, "16");
  imageLoading (17, "17");
  imageLoading (18, "18");
  imageLoading (19, "19");
  imageLoading (20, "20");
  imageLoading (21, "21");
  imageLoading (22, "22");
  imageLoading (23, "23");
  imageLoading (24, "24");
  imageLoading (25, "25");
  imageLoading (26, "26");
  imageLoading (27, "27");
  imageLoading (28, "28");
  imageLoading (29, "29");
  
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
  } else if (mode == OPTIONS) {
    options();
  } else if (mode == HELP) {
    help();
  } else if (mode == SHOP) {
    shop();
  } else {
    println("Error: Mode = " + mode);
  }
} //end of draw

void imageLoading(int n, String name2) {
  String fileName = name2 + ".png";
  images[n] = loadImage(fileName);
}

void circularTactile(float x, float y, float d) { //makes circular buttons tactile
  if (dist(x, y, mouseX, mouseY) <= d/2) {
    stroke(lightgrey);
  } else {
    stroke(darkgrey);
  }
} //end of circularTactile

void rectTactile (float x1, float y1, float x2, float y2) { //makes rect buttons tactile
  if (mouseX > x1 - (x2/2) && mouseX < x1 + (x2/2) && mouseY > y1 - (y2/2) && mouseY < y1 + (y2/2) ) {
    stroke(lightgrey);
  } else {
    stroke(darkgrey);
  }
} //end of rectTactile

void circularImageTactile(int n, float x, float y, float w, float h) { //makes circular buttons tactile
  if (dist(x + (w/2), y + (h/2), mouseX, mouseY) <= w/2) {
    n = n + 15;
  } else if(n >= n + 15) {
    n = n - 15;
  }
  image(images[n],x, y, w, h);
} //end of circularImageTactile

void circularButton(int x, int y, int d, int buttonColor) { //color buttons
  circularTactile(x, y, d);
  strokeWeight(2);
  fill(buttonColor);
  circle(x, y, d);
} //end of button

void rectButton(int x1, int x2, int y1, int y2, int buttonColor) { //color buttons
  rectTactile(x1, x2, y1, y2);
  strokeWeight(2);
  fill(buttonColor);
  rect(x1, x2, y1, y2);
} //end of button

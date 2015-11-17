// The Nature of Code
// Daniel Shiffman
// http://natureofcode.com

boolean turnOnPause;
boolean pauseByConditionToggle, __condition;
// Example 1-1: Bouncing Ball, no vectors
float x = 100;
float y = 100;
float xspeed = 2.5;
float yspeed = 2;

void setup() {
  size(800, 200);
  smooth();
  turnOnPause = true;
  pauseByConditionToggle = false;
  __condition = false;
}


void draw() {
  background(255);


  // Add the current speed to the location.
  x = x + xspeed;
  y = y + yspeed;

  design__condition();
  pauseByCondition();

  if ((x > width) || (x < 0)) {
    xspeed = xspeed * -1;
  }
  if ((y > height) || (y < 0)) {
    yspeed = yspeed * -1;
  }


  // Display circle at x location
  stroke(0);
  strokeWeight(2);
  fill(127);
  ellipse(x, y, 48, 48);

  turnOnPauseControl();

  
  
  
} 

void keyPressed() {
  stepByStepPressN();
  loopingPauseLoopingPressL(); 
  conditionLoopingPauseLoopingTogglePressSpacebar();
}
// The Nature of Code
// Daniel Shiffman
// http://natureofcode.com
boolean turnOnPause;
boolean pauseByConditionToggle, __condition;
// A Mover object
Mover mover;

void setup() {
  size(640, 360);
  mover = new Mover(); 

  turnOnPause = true;


  pauseByConditionToggle = false;
  __condition = false;
}

void draw() {
  background(255);

  //design__condition();
  //pauseByCondition();

  // Update the location
  mover.update();
  // Display the Mover
  mover.display();


  turnOnPauseControl();
}


void keyPressed() {
   
  stepByStepPressN();
  loopingPauseLoopingPressL();
  //conditionLoopingPauseLoopingTogglePressSpacebar();
  
}
// The Nature of Code
// Daniel Shiffman
// http://natureofcode.com
boolean turnOnPause;
boolean pauseByConditionToggle, __condition;


Mover m;
Attractor a;

void setup() {
  size(640,360);
  
  turnOnPause = true;
  
  m = new Mover(); 
  a = new Attractor();
}

void draw() {
  background(255);

  PVector force = a.attract(m);
  m.applyForce(force);
  m.update();
  
  a.drag();
  a.hover(mouseX,mouseY);
 
  a.display();
  m.display();
  
  
  turnOnPauseControl();
}

void mousePressed() {
  a.clicked(mouseX,mouseY); 
}

void mouseReleased() {
  a.stopDragging(); 
}

void keyPressed() {
   
 stepByStepPressN();
 loopingPauseLoopingPressL();
 // conditionLoopingPauseLoopingTogglePressSpacebar();
  
}
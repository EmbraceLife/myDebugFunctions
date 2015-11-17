// global variables for debugging
//boolean turnOnPause;
//boolean pauseByConditionToggle, __condition;


//void setup() {

//turnOnPause = true;


//pauseByConditionToggle = false;
//__condition = false;
//}


//void draw() {

// put the following two above conditional methods or functions of program
//design__condition();
//pauseByCondition();


// put the following at the end of draw() function
//turnOnPauseControl();

//}

//void keyPressed() {
   
//  stepByStepPressN();
//  loopingPauseLoopingPressL();
//  conditionLoopingPauseLoopingTogglePressSpacebar();
  
//}




void turnOnPauseControl() {
  if (turnOnPause) {
    noLoop();

    watchHereBoolean("turnOnPauseControl()-->turnOnPause-->", turnOnPause, "-->noLoop()");
  } else {
    //watchHereBoolean("turnOnPauseControl()-->turnOnPause-->", turnOnPause, "-->nothing");
  }
}

void stepByStepPressN() {
  if (key == 'n') {
    redraw();

    watchHereBoolean("stepByStepPressN()-->n pressed?-->", key == 'n', "-->redraw()");

    // loop step by step and check all the variables

    //watchHere("x", x);
    //watchHere("xspeed", xspeed);
    //watchHere("y", y);
    //watchHere("yspeed", yspeed);
  }
}

void loopingPauseLoopingPressL() {
  if (key == 'l' || key == 'L') { 
    turnOnPause = !turnOnPause;
    loop();
    watchHereBoolean("loopingPauseLoopingHoldingL()-->set turnOnPause-->", turnOnPause, "-->loop()");
  }
}

//******
// define __condition
// ******
//void design__condition() {
//  __condition = ((y > height) || (y < 0));
//  if (__condition) {
//    watchHereBoolean("design__condition()-->__condition = y + 20 > height", __condition, "");
//  }
//}



void pauseByCondition() { // if __condition is defined within class method, then this function goes there
  if (__condition) { // __condition may only true for a few frames, 
    pauseByConditionToggle = true; // we need a toggle to control noLoop()
  }

  if (pauseByConditionToggle) {// __condition may only true for a few frames, we need a toggle    
    watchHereBoolean("pauseByCondition()-->pauseByConditionToggle-->", pauseByConditionToggle, "-->noLoop()");

    // watch variables when condition met
    //watchHere("x", x);
    //watchHere("xspeed", xspeed);
    //watchHere("y", y);
    //watchHere("yspeed", yspeed);

    // now pause
    noLoop();
  }
}




void conditionLoopingPauseLoopingTogglePressSpacebar() {
  if (key == ' ') {

    pauseByConditionToggle = !pauseByConditionToggle; 
    loop();

    watchHereBoolean("conditionLoopingPauseLoopingTogglePressSpacebar()->set pauseByConditionToggle", pauseByConditionToggle, "-->loop()");
  }
}



void watchHereBoolean(String str1, boolean var1, String str2) {
  println("frame:", frameCount, str1, var1, str2);
}


// *****
// debug tools to be built
// *****
void watchHere(String str, float var1) {
  println("frame:", frameCount, str, "-->", var1);
}



// boolean displayXYToggle;
void displayXY(float x, float y, float diameter, float spacer) {
    // viz debug location.x,y
  textAlign(CENTER);
  text("x:"+x+", y:"+y, x, y-diameter/2-spacer);    
}
void displayXYToggleControl() {
  if (key == '1') {
    displayXYToggle = !displayXYToggle;
  }
}
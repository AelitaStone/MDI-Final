import de.voidplus.leapmotion.*;

// ======================================================
// Table of Contents:
// ├─ 1. Swipe Gesture
// ├─ 2. Circle Gesture
// ├─ 3. Screen Tap Gesture
// └─ 4. Key Tap Gesture
// ======================================================


LeapMotion leap;
int counter = 0;
boolean rtap, ltap;

void setupLeap() {
  //size(800, 500);
  //background(255);
  // ...

  //leap = new LeapMotion(this).allowGestures();  // All gestures
  // leap = new LeapMotion(this).allowGestures("circle, swipe, screen_tap, key_tap");
  leap = new LeapMotion(this).allowGestures("circle, swipe, screen_tap");  // Leap detects only swipe gestures
}




// ======================================================
// 1. Swipe Gesture

void leapOnSwipeGesture(SwipeGesture g, int state) {
  int     id               = g.getId();
  Finger  finger           = g.getFinger();
  PVector position         = g.getPosition();
  PVector positionStart    = g.getStartPosition();
  PVector direction        = g.getDirection();
  float   speed            = g.getSpeed();
  long    duration         = g.getDuration();
  float   durationSeconds  = g.getDurationInSeconds();

  switch(state) {

  case 1: // Start
    //counter ++; 
    //println("SwipeGesture: "  + counter);
    break;
  case 2: // Update
    //counter ++; 
    //println("SwipeGesture: "  + counter);
    break;
  case 3: // Stop
    //if (id < 2) {
    if (mode==0) {
      mode=1;
    }
    if (mode==2) {
      mode=4;
    }
    if (mode==3) {
      mode=6;
    }
    if (mode==8) {
      mode=0;
    }
    if (mode==7) {
      mode=9;
    }
    if (mode==10) {
      mode=11;
    }
    if (mode==13) {
      mode=14;
    }
    if (mode==15) {
      mode=20;
    }
    if (mode==16) {
      mode=20;
    }
    if (mode==17) {
      mode=20;
    }
    if (mode==18) {
      mode=20;
    }
    if (mode==19) {
      mode=20;
    }
   
    break;
  }
}


// ======================================================
// 2. Circle Gesture

void leapOnCircleGesture(CircleGesture g, int state) {
  int     id               = g.getId();
  Finger  finger           = g.getFinger();
  PVector positionCenter   = g.getCenter();
  float   radius           = g.getRadius();
  float   progress         = g.getProgress();
  long    duration         = g.getDuration();
  float   durationSeconds  = g.getDurationInSeconds();
  int     direction        = g.getDirection();

  switch(state) {
  case 1: // Start
    break;
  case 2: // Update
    break;
  case 3: // Stop
    //println("CircleGesture: " + id);
    if (mode==1) {
      mode=2;
    }
    if (mode==4) {
      mode=3;
    }
    if (mode==6) {
      mode=5;
    }
   
    break;
  }

  switch(direction) {
  case 0: // Anticlockwise/Left gesture
    break;
  case 1: // Clockwise/Right gesture
    break;
  }
}


// ======================================================
// 3. Screen Tap Gesture

void leapOnScreenTapGesture(ScreenTapGesture g) {
  int     id               = g.getId();
  Finger  finger           = g.getFinger();
  PVector position         = g.getPosition();
  PVector direction        = g.getDirection();
  long    duration         = g.getDuration();
  float   durationSeconds  = g.getDurationInSeconds();
  if (position.x > 500) {//rtap
    rtap = true;
    ltap = false;

    if (mode==5) {
      mode=8;
    }
     if (mode==9) {
      mode=8;
    }
    if (mode==11) {
      mode=8;
    }
   // if(mode==20){
    //mode=21;
  //}
  } else {//ltap
    rtap = false;
    ltap = true;

    if (mode==5) {
      mode=7;
    }
    if (mode==9) {
      mode=10;
    }
    if (mode==11) {
      mode=13;
    }
  }


  if (position.y < 100) {
    //key 1
   if (mode==14) {
      mode=15;
    }
  } else if (position.y < 200) {
    //key 2
    if (mode==14) {
      mode=16;
  } else if (position.y < 300) {
    //key 3
   if (mode==14) {
      mode=17;
    }
  } else if (position.y < 400){
    //key 4
    if (mode==14) {
      mode=18;
    }
  }else if (position.y < 500){
    if (mode==14) {
      mode=19;
    }
  }
  }
  println("ScreenTapGesture: " + rtap);
}


// ======================================================
// 4. Key Tap Gesture

void leapOnKeyTapGesture(KeyTapGesture g) {
  int     id               = g.getId();
  Finger  finger           = g.getFinger();
  PVector position         = g.getPosition();
  PVector direction        = g.getDirection();
  long    duration         = g.getDuration();
  float   durationSeconds  = g.getDurationInSeconds();

  println("KeyTapGesture: " + id);
}
// The Nature of Code
// Daniel Shiffman
// http://natureofcode.com

class Mover {

  // The Mover tracks location, velocity, and acceleration 
  PVector location;
  PVector velocity;
  PVector acceleration;
  // The Mover's maximum speed
  float topspeed;

  Mover() {
    // Start in the center
    location = new PVector(width/2, height/2);
    velocity = new PVector(0, 0);
    topspeed = 5;
  }

  void update() {
    println("frame:", frameCount, "-->move-inside-update()");
    
    // Compute a vector that points from location to mouse
    
    PVector mouse = new PVector(mouseX, mouseY);
    
    println("frame:", frameCount, "-->create-mouse-vector");    
    watchHere("mouse.x", mouse.x);
    watchHere("mouse.y", mouse.y);
    watchHere("location.x", location.x);
    watchHere("location.y", location.y);
    
    
    
    PVector acceleration = PVector.sub(mouse, location);
    
    println("frame:", frameCount, "-->acceleration = mouseVector-locationVector");
    watchHere("acceleration.x", acceleration.x);
    watchHere("acceleration.y", acceleration.y);    
    watchHere("acceleration.mag", acceleration.mag());  



    // Set magnitude of acceleration
    acceleration.setMag(0.2);
    println("frame:", frameCount, "-->set-acceleration.mag to 0.2");
    watchHere("acceleration.mag", acceleration.mag());  
    watchHere("acceleration.x", acceleration.x);
    watchHere("acceleration.y", acceleration.y);  


    // Velocity changes according to acceleration
    println("frame:", frameCount, "-->before: velocityVector + accelerationVector");    
    watchHere("velocity.x", velocity.x);
    watchHere("velocity.y", velocity.y);  
    
    
    velocity.add(acceleration);
    println("frame:", frameCount, "-->now: velocityVector + accelerationVector");
    watchHere("velocity.x", velocity.x);
    watchHere("velocity.y", velocity.y);   
    watchHere("velocity.mag", velocity.mag());

    // Limit the velocity by topspeed
    velocity.limit(topspeed);
    println("frame:", frameCount, "-->limit velocity.mag within-->", topspeed);
    // Location changes by velocity
    println("frame:", frameCount, "-->before: locationVector+velocityVector");
    watchHere("location.x", location.x);
    watchHere("location.y", location.y);    
    watchHere("location.mag", location.mag());
    
    location.add(velocity);
    println("frame:", frameCount, "-->after: locationVector+velocityVector");    
    watchHere("location.x", location.x);
    watchHere("location.y", location.y);
    watchHere("location.mag", location.mag());
    
    println("frame:", frameCount, "move-outside-update()");
  }

  void display() {
    stroke(0);
    strokeWeight(2);
    fill(127);
    ellipse(location.x, location.y, 48, 48);
  }
}
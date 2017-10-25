void setup(){
  size(1080, 720);
  frameRate(60);
  heart = loadImage("heart.png");
  heartEmpty = loadImage("heart-empty.png");
  drawFrame();
}

public void draw(){
  if (tank1Fire == true)
  {
    tank1Sling();
    tank2(tank2x);
  } else if(tank2Fire == true){
    tank2Sling();
    tank1(tank1x);
  }
  
  if (tank1Fire == true && fire == true)
  {
    drawFrame();
    tank2(tank2x);
    refreshSling();
    fire();
  }
  if (tank2Fire == true && fire == true)
  {
    drawFrame();
    tank1(tank1x);
    refreshSling();
    fire();
  }
  tankMovement();
}
public void mouseReleased(){
  if(tank1Fire == true && velocity.x ==0)
  {
   position = new PVector(tank1GunHingeLocationX, tank1GunHingeLocationY); // 
   velocity = new PVector(tank1GunSLength * cos(tank1GunSAngle),  // Horizontal Velocity: Inital Velocity * sin(tank1GunSAngle Launched)
            tank1GunSLength * sin(tank1GunSAngle));  // Vertical Velocity: Inital Velocity * sin(tank1GunSAngle Launched)
   acceleration = new PVector(cos(tank1GunSAngle) * tank1Time, 0); // Horziontal Distance: cos(tank1GunSAngle Launched) *  time = tank1Force/mass
   velocity.add(acceleration);
   position.add(velocity);
   fire = true;
   fire();
 } else if(tank2Fire == true && velocity.x ==0){
   position = new PVector(tank2GunHingeLocationX, tank2GunHingeLocationY); // 
   velocity = new PVector(tank2GunSLength * cos(tank2GunSAngle),  // Horizontal Velocity: Inital Velocity * -sin(tank1GunSAngle Launched)
            tank2GunSLength * sin(tank2GunSAngle));  // Vertical Velocity: Inital Velocity * -sin(tank1GunSAngle Launched)
   acceleration = new PVector(cos(tank2GunSAngle) * tank2Time, 0); // Horziontal Distance: cos(tank1GunSAngle Launched) *  time = tank1Force/mass
   velocity.add(acceleration); // 
   position.add(velocity);
   fire = true;
   fire();
  }
}

public void fire(){
  if(tank1Health == 0){
    winner(2);
  }else if(tank2Health == 0){
    winner(1);
  }else{
    fill(47, 79, 79);
    ellipseMode(CENTER);
    ellipse(position.x, position.y, diameter, diameter); // Constantly draw the ball
    tankVelocity();
    tankCollisons();
    screenCollisons();
    worldCollisons();
    acceleration = new PVector(0, (gravity*speed) / frameRate);
    //The vertical distance equation but in a simplified format, so the ball will come back down when the acceleration has reached 0. 
    //Divides gravity*speed by the framerate to get the acceleration(know as time) of the ball
    velocity.add(acceleration); // Adds the acceleration to the velocity
    position.add(velocity); // Adds the current velocity to the position of the ball
  }
}
public void stopFire(){
  // if the ball goes out of the screen constraints it will stop the ball
  if(tank1Fire == true){
    tank1Fire = false;
    tank2Fire = true;
    velocity.x = 0;
  }else if(tank2Fire == true){
    tank2Fire = false;
    tank1Fire = true;
    velocity.x = 0;
  }
}
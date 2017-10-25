public void tankMovement(){
  for(int i=0; i<keys.length; i++){ 
      
    if(tank1Fire == true){ 
      if (keys[0] && tank1x>-20){
         tank1x -=1;
       }
       else{
         tank1x +=0;
       }
       
       if (keys[1] && tank1x<300){
         tank1x +=1;}
       else{
         tank1x +=0;
       }
    }
     
    if(tank2Fire == true){  
      if (keys[0] && tank2x>-300){
      tank2x  -=1;
      }else{
        tank2x +=0;
      }
      if (keys[1] && tank2x<28){
        tank2x +=1;
      }else if(tank2x>1080){
        tank2x +=0;
      }
    }
  }
}

public void tank1(float xMovement){
  tank1xMovementNew = xMovement;
  strokeWeight(1);
  stroke(0);
  fill(68,77,100);
  ellipse(tank1EllpiseX + xMovement,tank1EllpiseY,30,20);
  fill(59,83,142);
  rect(tank1RectTopX + xMovement,tank1RectTopY,60,30,20);
  fill(50);
  rect(tank1RectBottomX + xMovement,tank1RectBottomY,60,10,20);
}

//TANK TWO (RED)

public void tank2(float xMovement){
  tank2xMovementNew = xMovement;
  strokeWeight(1);
  stroke(0);
  fill(108,68,72);
  ellipse(tank2EllpiseX + xMovement,tank2EllpiseY,30,20);
  fill(188,68,68);
  rect(tank2RectTopX + xMovement,tank2RectTopY,60,30,20);
  fill(50);
  rect(tank2RectBottomX + xMovement,tank2RectBottomY,60,10,20);
}

public void tank1Sling(){
    tank1GunHingeLocationX = tank1EllpiseX + tank1xMovementNew + (tank1GunWidth / 2);
    tank1GunHingeLocationY = tank1EllpiseY + (tank1GunWidth / 2);
    tank1GunSAngle = atan2(mouseY - tank1GunHingeLocationY, //Gets the angle of the sling by: taking away the hingeYlocation from mouseY location for the x coordianate, taking away the hingeXlocation from mouseX location for the x coordianate
    mouseX - tank1GunHingeLocationX);
    tank1GunSLength = dist(tank1GunHingeLocationX, tank1GunHingeLocationY, mouseX, mouseY); // Gets the length of the sling by finding the distance between the mouse coordianates and the positon of the sling
    if (tank1GunSLength > tank1maxGunSLength) // Checks if distance is bigger than the max distance
    {
      tank1GunSLength = tank1maxGunSLength; // Sets distance to max length if bigger
    }
    drawFrame();
    refreshSling();
 
    tank1Force = 2.5 * (tank1GunSLength / tank1maxGunSLength); // Finds the force by dividing the length of the sling by the maximum length of the sling and multiplys it by 2.5
}

public void tank2Sling(){
  tank2GunHingeLocationX = tank2EllpiseX + tank2xMovementNew + (tank2GunWidth / 2);
  tank2GunHingeLocationY = tank2EllpiseY + (tank2GunWidth / 2);
  tank2GunSAngle = atan2(mouseY - tank2GunHingeLocationY,
  mouseX - tank2GunHingeLocationX);
  tank2GunSLength = dist(tank2GunHingeLocationX, tank2GunHingeLocationY, mouseX, mouseY);
 
  if (tank2GunSLength > tank2maxGunSLength)
  {
    tank2GunSLength = tank2maxGunSLength;
  }
  drawFrame();
  refreshSling();
 
  tank1Force = 2.5 * (tank2GunSLength / tank2maxGunSLength);
}
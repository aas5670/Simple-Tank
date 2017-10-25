public void refreshSling()
{
  if(tank1Fire == true){
    tank1(tank1x);
    pushMatrix();
    translate(tank1GunHingeLocationX, tank1GunHingeLocationY);
    rotate(tank1GunSAngle);
    fill(34, 139, 34);
    stroke(34, 139, 34);
    rect(0, -2, tank1GunSLength, 4);
    popMatrix();
  } else if(tank2Fire == true){
    tank2(tank2x);
    pushMatrix();
    translate(tank2GunHingeLocationX, tank2GunHingeLocationY);
    rotate(tank2GunSAngle);
    fill(34, 139, 34);
    stroke(34, 139, 34);
    rect(0, -2, tank2GunSLength, 4);
    popMatrix();
  }
}
public void drawFrame()
{
  background(204);
  //ENVIRONMENT//
  hills();
  ground();
  buildings();
 
  // Luancher Leg(s)
  //fill(100, 100, 0);
  //stroke(100, 100, 0);
  //rect(tank1GunPositionX, tank1GunPositionY, 6, 30);
  //rect(tank2GunPositionX, tank2GunPositionY, 6, 30);
  
  // Tank Collision Test
  //rect(tank1CollX1, tank1CollY1, tank1Size, tank1Size);
  
  tankInterface();
}
public void tankInterface(){
  // Tank 1 UI
  fill(111);
  rect(0, 0, 170, 50);
  fill(255);
  textSize(15);
  text("Tank 1", 60, 20);
  text("Health: ", 20, 40);
  // Tank 1 Health Heart
  if(tank1Health == 0){
    image(heartEmpty, 80, 25, heartSize, heartSize);
    image(heartEmpty, 105, 25, heartSize, heartSize);
    image(heartEmpty, 130, 25, heartSize, heartSize);
  }
  if(tank1Health == 1){
    image(heart, 80, 25, heartSize, heartSize);
    image(heartEmpty, 105, 25, heartSize, heartSize);
    image(heartEmpty, 130, 25, heartSize, heartSize);
  }
  if(tank1Health == 2){
    image(heart, 80, 25,heartSize, heartSize);
    image(heart, 105, 25, heartSize, heartSize);
    image(heartEmpty, 130, 25, heartSize, heartSize);
  }
  if(tank1Health == 3){
    image(heart, 80, 25, heartSize, heartSize);
    image(heart, 105, 25, heartSize, heartSize);
    image(heart, 130, 25, heartSize, heartSize);
  }
  // Tank 2 UI
  fill(111);
  rect(910, 0, 170, 50);
  fill(255);
  textSize(15);
  text("Tank 2", 980, 20);
  text("Health: ", 930, 40);
  /// Tank 2 Health Heart
  if(tank2Health == 0){
    image(heartEmpty, 1040, 25, heartSize, heartSize);
    image(heartEmpty, 1015, 25, heartSize, heartSize);
    image(heartEmpty, 990, 25, heartSize, heartSize);
  }
  if(tank2Health == 1){
    image(heartEmpty, 1040, 25, heartSize, heartSize);
    image(heartEmpty, 1015, 25, heartSize, heartSize);
    image(heart, 990, 25, heartSize, heartSize);
  }
  if(tank2Health == 2){
    image(heartEmpty, 1040, 25,heartSize, heartSize);
    image(heart, 1015, 25, heartSize, heartSize);
    image(heart, 990, 25, heartSize, heartSize);
  }
  if(tank2Health == 3){
    image(heart, 1040, 25, heartSize, heartSize);
    image(heart, 1015, 25, heartSize, heartSize);
    image(heart, 990, 25, heartSize, heartSize);
  }
}
//HILLS//
public void hills(){
   noStroke();                  //no outline on the hills
 fill(125,149,92);            //darker green colour for furthest hill
 ellipse(300,700,900,500);    //furthest hill
 fill(169,191,139);           //lighter green colour for closer hill
 ellipse(750,700,900,500);    //closer hill
}

//GROUND//
public void ground(){
 noStroke();                   //no outline on the ground
 fill(165,160,120);            //colour of the ground
 rect(-5,580,1085,140);        //foreground rectangle to make the platform for projectiles
}

//BUILDINGS//
public void buildings(){
 //HOUSE LEFT
 fill(237,236,189);            //building colour
 rect(leftBuildingX,leftBuildingY,leftBuildingXSize,leftBuildingYSize);        //building
 fill(192,227,222);            //window colour
 rect(395,470,30,30);          //window
 rect(395,510,30,30);          //window
 rect(440,470,30,30);          //window
 rect(440,510,30,30);          //window
 
 //HOUSE RIGHT
 fill(237,236,189);
 rect(rightBuildingX,rightBuildingY,rightBuildingXSize, rightBuildingYSize);
 fill(192,227,222);
 rect(540,510,30,30);
 rect(580,510,30,30);
 rect(620,510,30,30); 
}

public void winner(float winnerTank){
  if(winnerTank == 1){
    textSize(50);
    fill(0,0,255);
    text("Blue Tank Wins!", 350,height/2);
    }else if(winnerTank == 2){
    textSize(50);
    fill(255,0,0);
    text("Red Tank Wins!", 350,height/2);
  }
}
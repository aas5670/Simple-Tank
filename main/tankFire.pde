public void tankVelocity(){
    
  if(tank1Fire == true){
    // If the x velocity less than 0.2 or greater than -0.2
    // Stops the ball from moving along the x axis
    // By setting the velocity x to 0
    if (velocity.x < 0.2 && velocity.x > -0.2)
    {
      velocity.x = 0;
    }
    // If the y position is greater than 580 sets the position y to 580
    // Sets the y position of the ball to 580 so where the ground is
    // To set the ball in a staionary position on the y axis
    if (position.y > 580){
      position.y = 580;
    }
    
    // If the position y of the ball add the diameter of the ball is greather than 580
    // and the velocity x of the ball equals 0
    // It tops the ball from moving along the y axis
    // By counteracting the velocity y so setting the velocity y to the minus value of
    // the velocity y
    if (position.y + diameter > 580 && velocity.x == 0){
      velocity.y = -velocity.y;
    // else if the position y of the ball add the diameter of the ball is greather than 580
    // and the velocity x of the is greater than 0 (When the ball hits the ground and the ball is moving forward)
    // velocity y equals to the negative y velocity * .7 this is done to decrease the y velocity at a constant rate to create the simulation of the ball bouncing 
    // veloicty x equals velocity x minus .2 this makes the x velocity increase at a constant rate and when the ball comes to a stand it will stop the ball from moving 
    }else if (position.y + diameter > 580 && velocity.x >0){
        velocity.y = -velocity.y * .7;
        velocity.x = velocity.x - .2;
    // else if the position y of the ball add the diameter of the ball is greather than 580
    // and the velocity x of the is less than or equal to 0 (When the ball hits the ground and the ball is moving backwards)
    // velocity y equals to the negative y velocity * .7 this is done to decrease the y velocity at a constant rate to create the simulation of the ball bouncing 
    // veloicty x equals velocity x add .2 this makes the x velocity decrease at a constant rate and when the ball comes to a stand it will stop the ball from moving 
    }else if(position.y + diameter > 580 && velocity.x <=0){
        velocity.y = -velocity.y * .7;
        velocity.x = velocity.x + .2;
    }
 }else if(tank2Fire == true){
    // If the x velocity less than 0.2 or greater than -0.2
    // Stops the ball from moving along the x axis
    // By setting the velocity x to 0
    if (velocity.x < 0.2 && velocity.x > -0.2)
    {
      velocity.x = 0;
    }
    // If the y position is greater than 580 sets the position y to 580
    // Sets the y position of the ball to 580 so where the ground is
    // To set the ball in a staionary position on the y axis
    if (position.y > 580){
      position.y = 580;
    }
    
    // If the position y of the ball add the diameter of the ball is greather than 580
    // and the velocity x of the ball equals 0
    // It tops the ball from moving along the y axis
    // By counteracting the velocity y so setting the velocity y to the minus value of
    // the velocity y
    if (position.y + diameter > 580 && velocity.x == 0){
      velocity.y = -velocity.y;
    // else if the position y of the ball add the diameter of the ball is greather than 580
    // and the velocity x of the is greater than 0 (When the ball hits the ground and the ball is moving forward)
    // velocity y equals to the negative y velocity * .7 this is done to decrease the y velocity at a constant rate to create the simulation of the ball bouncing 
    // veloicty x equals velocity x add .2 this makes the x velocity decrease at a constant rate and when the ball comes to a stand it will stop the ball from moving 
    }else if (position.y + diameter > 580 && velocity.x >0){
        velocity.y = -velocity.y * .7;
        velocity.x = velocity.x - .2;
    // else if the position y of the ball add the diameter of the ball is greather than 580
    // and the velocity x of the is less than or equal to 0 (When the ball hits the ground and the ball is moving backwards)
    // velocity y equals to the negative y velocity * .7 this is done to decrease the y velocity at a constant rate to create the simulation of the ball bouncing 
    // veloicty x equals velocity x minus .2 this makes the x velocity increase at a constant rate and when the ball comes to a stand it will stop the ball from moving 
    }else if(position.y + diameter > 580 && velocity.x <=0){
        velocity.y = -velocity.y * .7;
        velocity.x = velocity.x + .2;
    }
  }
}
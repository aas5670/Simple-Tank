public void tankCollisons(){
    if(tank1Fire == true){
    if(position.x <= tank2RectBottomX && position.x >= tank2RectBottomX - tank2RectBottomXSize){
      if(position.y >= tank2RectBottomY && position.y <= tank2RectBottomY + tank2RectBottomYSize){
        if(tank2Health == 3){
          tank2Health = 2;
        }else if(tank2Health == 2){
          tank2Health = 1;
        }else if(tank2Health == 1){
          tank2Health = 0;
        }
        fire = false;
        stopFire();
      }
    }else if(position.x <= tank2RectTopX && position.x >= tank2RectTopX -  tank2RectTopXSize){
      if(position.y >= tank2RectTopY && position.y <= tank2RectTopY + tank2RectTopYSize){
        if(tank2Health == 3){
          tank2Health = 2;
        }else if(tank2Health == 2){
          tank2Health = 1;
        }else if(tank2Health == 1){
          tank2Health = 0;
        }
        fire = false;
        stopFire();
      }
    }else if(position.x <= tank2EllpiseX && position.x >= tank2EllpiseX -  tank2EllpiseXSize){
      if(position.y >= tank2EllpiseY && position.y <= tank2EllpiseY + tank2EllpiseYSize){
        if(tank2Health == 3){
          tank2Health = 2;
        }else if(tank2Health == 2){
          tank2Health = 1;
        }else if(tank2Health == 1){
          tank2Health = 0;
        }
        fire = false;
        stopFire();
      }
    }
  }
  if(tank2Fire == true){
    if(position.x >= tank1RectBottomX && position.x <= tank1RectBottomX + tank1RectBottomXSize){
      if(position.y >= tank1RectBottomY && position.y <= tank1RectBottomY + tank1RectBottomYSize){
        if(tank1Health == 3){
          tank1Health = 2;
        }else if(tank1Health == 2){
          tank1Health = 1;
        }else if(tank1Health == 1){
          tank1Health = 0;
        }
        fire = false;
        stopFire();
      }
    }else if(position.x >= tank1RectTopX && position.x <= tank1RectTopX +  tank1RectTopXSize){
      if(position.y >= tank1RectTopY && position.y <= tank1RectTopY + tank1RectTopYSize){
        if(tank1Health == 3){
          tank1Health = 2;
        }else if(tank1Health == 2){
          tank1Health = 1;
        }else if(tank1Health == 1){
          tank1Health = 0;
        }
        fire = false;
        stopFire();
      }
    }else if(position.x >= tank1EllpiseX && position.x <= tank1EllpiseX +  tank1EllpiseXSize){
      if(position.y >= tank1EllpiseY && position.y <= tank1EllpiseY + tank1EllpiseYSize){
        if(tank1Health == 3){
          tank1Health = 2;
        }else if(tank1Health == 2){
          tank1Health = 1;
        }else if(tank1Health == 1){
          tank1Health = 0;
        }
        fire = false;
        stopFire();
      }
    }
  }
}

public void screenCollisons(){
    // if the ball goes out of the screen constraints it will stop the ball
  if(position.y>height || position.x>width || position.x<0 || velocity.x == 0){
    fire = false;
    stopFire();
  }
}

public void worldCollisons(){
  if(tank1Fire == true){
    if(position.x >= leftBuildingX - diameter*3 && position.x <= leftBuildingX + leftBuildingXSize + diameter*3 && position.y >= leftBuildingY && position.y <= leftBuildingY + leftBuildingYSize){
      position.x = leftBuildingX-diameter;
      velocity.x = -velocity.x * .7;
    }
    if(position.x >= leftBuildingX && position.x <= leftBuildingX + leftBuildingXSize && position.y <= leftBuildingY && position.y >= leftBuildingY - diameter*3){
      velocity.y = -velocity.y * .7;
    }
    if(position.x >= rightBuildingX - diameter*3  && position.x <= rightBuildingX + rightBuildingXSize + diameter*3 && position.y >= rightBuildingY && position.y <= rightBuildingY + rightBuildingYSize){
      position.x = rightBuildingX-diameter;
      velocity.x = -velocity.x * .7;
    }
    if(position.x >= rightBuildingX && position.x <= rightBuildingX + rightBuildingXSize && position.y <= rightBuildingY && position.y >= rightBuildingY - diameter*3){
      velocity.y = -velocity.y * .7;
    }
  }else if(tank2Fire == true){
    if(position.x >= leftBuildingX - diameter*3  && position.x <= leftBuildingX + leftBuildingXSize + diameter*3  && position.y >= leftBuildingY && position.y <= leftBuildingY + leftBuildingYSize){
      position.x =leftBuildingX + leftBuildingXSize + diameter;
      velocity.x = -velocity.x * .7;
    }
    if(position.x >= leftBuildingX && position.x <= leftBuildingX + leftBuildingXSize && position.y <= leftBuildingY && position.y >= leftBuildingY - diameter*3){
      velocity.y = -velocity.y * .7;
    }
    if(position.x >= rightBuildingX - diameter*3  && position.x <= rightBuildingX + rightBuildingXSize + diameter*3  && position.y >= rightBuildingY && position.y <= rightBuildingY + rightBuildingYSize){
      position.x = rightBuildingX+rightBuildingXSize +diameter;
      velocity.x = -velocity.x * .7;
    }
    if(position.x >= rightBuildingX && position.x <= rightBuildingX + rightBuildingXSize && position.y <= rightBuildingY && position.y >= rightBuildingY - diameter*3){
      velocity.y = -velocity.y * .7;
    }
  }
}
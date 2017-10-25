// BALL
PVector position = new PVector(0,0);
PVector velocity = new PVector(0,0);
PVector acceleration;

// MISC
PImage heart;
PImage heartEmpty;
int heartSize = 20;

//Tank 1 Properties
int tank1GunPositionX = 60;
int tank1GunPositionY = 550;
int tank1GunWidth = 4;
int tank1maxGunSLength = 30;
int tank1GunSRestLength = 13;
int tank1GunSResttank1GunSAngle = 94;
int tank1GunSRestRate = 9;
 
float tank1GunSAngle;
float tank1GunSLength;
float tank1GunHingeLocationX = tank1GunPositionX + (tank1GunWidth / 2);
float tank1GunHingeLocationY = tank1GunPositionY + (tank1GunWidth / 2);

float tank1Force = 0;
float tank1Mass = 14.20;
float tank1Time = tank1Force/tank1Mass;

int tank1Health = 3;

//Tank 2 Properties
int tank2GunPositionX = 1020;
int tank2GunPositionY = 550;
int tank2GunWidth = 4;
int tank2maxGunSLength = 30;
int tank2GunSRestLength = 13;
int tank2GunSResttank1GunSAngle = 94;
int tank2GunSRestRate = 9;
 
float tank2GunSAngle;
float tank2GunSLength;
float tank2GunHingeLocationX = tank2GunPositionX + (tank2GunWidth / 2);
float tank2GunHingeLocationY = tank2GunPositionY + (tank2GunWidth / 2);

float tank2Force = 0;
float tank2Mass = 14.20;
float tank2Time = tank2Force/tank2Mass;

float diameter = tank2Mass/2;

int tank2Health = 3;

// Sling
int tankNumber = 1;

boolean tank1Fire = true;
boolean tank2Fire = false;
//Enviorment
float speed = 3;
float gravity = 9.8;

boolean fire;

// NEW
float player;

//TANK ONE (BLUE)
float tank1x;

//TANK TWO (RED)
float tank2x;

boolean keys[] = new boolean [3];
boolean player1 = true;
boolean player2 = false;

// TEST
float tank1RectBottomX = 20;
float tank1RectBottomY = 570;
float tank1RectBottomXSize = 60;
float tank1RectBottomYSize = 10;
float tank1RectTopX = 20;
float tank1RectTopY = 550;
float tank1RectTopXSize = 60;
float tank1RectTopYSize = 30;
float tank1EllpiseX = 50;
float tank1EllpiseY = 545;
float tank1EllpiseXSize = 30;
float tank1EllpiseYSize = 20;


float tank2RectBottomX = 990;
float tank2RectBottomY = 570;
float tank2RectBottomXSize = 60;
float tank2RectBottomYSize = 10;
float tank2RectTopX = 990;
float tank2RectTopY = 550;
float tank2RectTopXSize = 60;
float tank2RectTopYSize = 30;
float tank2EllpiseX = 1020;
float tank2EllpiseY = 545;
float tank2EllpiseXSize = 30;
float tank2EllpiseYSize = 20;

float tank1xMovementNew;
float tank2xMovementNew;

// BUILDINGS
float leftBuildingX = 382;
float leftBuildingY = 460;
float leftBuildingXSize = 100;
float leftBuildingYSize = 120;
float rightBuildingX = 530;
float rightBuildingY = 500;
float rightBuildingXSize = 160;
float rightBuildingYSize = 80;
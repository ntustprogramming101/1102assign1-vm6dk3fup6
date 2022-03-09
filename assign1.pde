
PImage bg;
PImage groundhog;
PImage life;
PImage robot;
PImage soil;
PImage soldier;
int life_W=50;
int groundhog_W=80;
int soldierX,robotX,robotY;
float soldierY,lightX,lightY,lightSpeed,range;

void setup() {
	size(640, 480, P2D);
	// Enter Your Setup Code Here
  bg=loadImage("img/bg.jpg");
  groundhog=loadImage("img/groundhog.png");
  life=loadImage("img/life.png");
  robot=loadImage("img/robot.png");
  soil=loadImage("img/soil.png");
  soldier=loadImage("img/soldier.png");
  
  soldierY=floor(random(2,6));
  robotY=floor(random(2,6));
  robotX=floor(random(2,6));
  lightX=robotX*80+25;lightY=robotY*80+37;
  range=robotX*80-160;
  lightSpeed=-2;
}

void draw() {
  
     image(bg,0,0);
  //sun
    stroke(255,255,0);strokeWeight(5);fill(253,184,19);
    ellipse(width-50,50,120,120);
    
    image(soil,0,160);
  
  //ground
    noStroke();
    fill(124,204,25);rect(0,160-15,width,15);
  
    image(life,10,10);
    image(life,10+life_W+20,10);
    image(life,life_W*2+10+40,10);
    image(groundhog,width/2-groundhog_W/2,80);
    
    //soldier
    soldierX+=2;//soldierX=soldierX+2 (speedX)
    soldierX=soldierX%width;  
    image(soldier,soldierX,soldierY*80);
  
    
  //robot
    image(robot,robotX*80,robotY*80); 
  
  //light
    fill(255,0,0);ellipse(lightX,lightY,10,10);
    lightX += lightSpeed;
    //lightX %= robotX*80-160;
    
    if(lightX<robotX*80-160){
    lightX=-10;
    lightSpeed=0;
    }
    if(lightX<=-10){
    fill(255,0,0);ellipse(lightX,lightY,10,10);
    lightX += lightSpeed; 
    }
    
  
  
 }
  
}

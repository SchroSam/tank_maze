/* Schrod, Olynerikson



*/ 

// for PTNKD 1 is facing up 2 is right, 3 is down, 4 is left
int GemStet = 0;
int PlayerTNKD = 1; 
PImage Goodtank = null;
PImage Badtank = null;

float Hx = 1450;
float Hy = 750;


void setup(){
  Goodtank = loadImage("tank.jpg");
  Badtank = loadImage("Badtank.jpg");
  size(1500,800);
  background(#AFE4EA);

}

void draw(){
PlayerTNKM(30, 15);

}


void redrawM(){
  if(GemStet == 0){
    background(255);
    image(Goodtank,Hx-25,Hy-25,50,50);
    //image(Badtank, Vx-25, Vy-25,50,50);

   }
}

void PlayerTNKM(int FSD, int RSD){
 redrawM();
 if(GemStet == 0){

 if(keyPressed) {

   if (keyCode == UP) {
   delay(300);
  

     if(PlayerTNKD == 1){
     Hy -= FSD;
     redrawM();
  }
    else if(PlayerTNKD == 2){
    Hx += FSD;
    redrawM();
}
   else if(PlayerTNKD == 3){
   Hy += FSD;
   redrawM();
}
  else if(PlayerTNKD == 4){
  Hx -= FSD;
  redrawM();
}

 }
 
if (keyCode == RIGHT){
  delay(300);
  if (PlayerTNKD == 4){
    PlayerTNKD = 1;
}
else {
  PlayerTNKD += 1;
}

}
if(keyCode == LEFT){
  delay(300);
  if(PlayerTNKD == 1){
    PlayerTNKD = 4;
}
else{
  PlayerTNKD -= 1;
}


}

  }
 

    if(Hx>=width) {
    Hx -= FSD;
  }
  if (Hx <= 0) {
    Hx += FSD;
  }
  if (Hy >= height) {
    Hy -= FSD;
  }
  if (Hy <= 0) {
    Hy += FSD;
  }
 } 
  if(PlayerTNKD == 1){
    Goodtank = loadImage("tank.jpg");
}
  
  
  else if(PlayerTNKD == 2){
    Goodtank = loadImage("tankRight.jpg");
  }
  else if(PlayerTNKD == 3){
    Goodtank = loadImage("tankDown.jpg");
  }
  
  else if(PlayerTNKD == 4){
    Goodtank = loadImage("tankLeft.jpg");
  }

}

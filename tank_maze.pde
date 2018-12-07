/* Schrod, Olynerikson



*/ 

// for PTNKD 1 is facing up 2 is right, 3 is down, 4 is left
int GemStet = 0;
int PlayerTNKD = 1; 
PImage Goodtank = null;
PImage Badtank = null;
float Hx = 36;
float Hy = 40;
int torpD = 1;
int torpA = 0;
float torpX = 2000;
float torpY = 2000;

void setup(){
  Goodtank = loadImage("tank.jpg");
  Badtank = loadImage("Badtank.jpg");
  size(1500,800);
  background(#AFE4EA);

}

void draw(){
PlayerTNKM(30);

}


void redrawM(){
  if(GemStet == 0){
    if(torpA == 0){
    background(255);
    image(Goodtank,Hx-25,Hy-25,50,50);
    //image(Badtank, Vx-25, Vy-25,50,50);
    
    }
    if(torpA == 1){
     background(255);
     image(Goodtank,Hx-25,Hy-25,50,50);
     //image(Badtank, Vx-25, Vy-25,50,50);
     fill(247,210,24);
     ellipse(torpX,torpY,5,5);
    }
   }
}

void PlayerTNKM(int FSD){
  
 redrawM();
 if(GemStet == 0){
 
 if(keyPressed) {

   if (keyCode == UP) {
   
  

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
  if (PlayerTNKD == 4){
    PlayerTNKD = 1;
}
else {
  PlayerTNKD += 1;
}

}
if(keyCode == LEFT){
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

void Projectile(){
  if(keyPressed){
    
   if(key == 'f'){
     torpA = 1;
     if(PlayerTNKD == 1){
       torpD = 1;
       
     }
     else if(PlayerTNKD == 2){
       torpD = 2;
     
     }
     else if(PlayerTNKD == 3){
       torpD = 3;
       
     }
     else if(PlayerTNKD == 4){
       torpD = 4;
       
     }
    }
  
  
  }
}

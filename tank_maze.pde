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
  size(1500,900);
  background(#AFE4EA);

}

void draw(){
PlayerTNKM(30);
Projectile();

}


void redrawM(){
  if(GemStet == 0){
    if(torpA == 0){
    background(255);
    image(Goodtank,Hx-25,Hy-25,50,50);
    //image(Badtank, Vx-25, Vy-25,50,50);
    ln();
    
    }
    else if(torpA == 1){
     background(255);
     image(Goodtank,Hx-25,Hy-25,50,50);
     //image(Badtank, Vx-25, Vy-25,50,50);
     fill(247,210,24);
     ellipse(torpX,torpY,5,5);
     ln();
    }
   }
}

void PlayerTNKM(int FSD){
  
 redrawM();
 if(GemStet == 0){
 
 if(keyPressed) {
   
   delay(300);
   ProjectileFlight();
   
   
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
       torpY -= 30;
       torpD = 1;
       
     }
     else if(PlayerTNKD == 2){
       torpX += 30;
       torpD = 2;
     
     }
     else if(PlayerTNKD == 3){
       torpY += 30;
       torpD = 3;
       
     }
     else if(PlayerTNKD == 4){
       torpX -= 30;
       torpD = 4;
       
     }
    }
  
  
  }
}

void ProjectileFlight(){
  if(torpD == 1){
    torpY -= 30;
  }
  else if(torpD == 2){
    torpX += 30;
  }
  else if(torpD == 3){
    torpY += 30;
  }
  else if(torpD == 4){
    torpX -= 30;
  }
}

void ln(){
int ln1 = 320;
int ln2 = 30;
fill(0);
// horizontal lines
line(0,ln2,1500,ln2);
ln2+=30;
line(0,ln2,1500,ln2);
ln2+=30;
line(0,ln2,1500,ln2);
ln2+=30;
line(0,ln2,1500,ln2);
ln2+=30;
line(0,ln2,1500,ln2);
ln2+=30;
line(0,ln2,1500,ln2);
ln2+=30;
line(0,ln2,1500,ln2);
ln2+=30;
line(0,ln2,1500,ln2);
ln2+=30;
line(0,ln2,1500,ln2);
ln2+=30;
line(0,ln2,1500,ln2);
ln2+=30;
line(0,ln2,1500,ln2);
ln2+=30;
line(0,ln2,1500,ln2);
ln2+=30;
line(0,ln2,1500,ln2);
ln2+=30;
line(0,ln2,1500,ln2);
ln2+=30;
line(0,ln2,1500,ln2);
ln2+=30;
line(0,ln2,1500,ln2);
ln2+=30;
line(0,ln2,1500,ln2);
ln2+=30;
line(0,ln2,1500,ln2);
ln2+=30;
line(0,ln2,1500,ln2);
ln2+=30;
line(0,ln2,1500,ln2);
ln2+=30;
line(0,ln2,1500,ln2);
ln2+=30;
line(0,ln2,1500,ln2);
ln2+=30;
line(0,ln2,1500,ln2);
ln2+=30;
line(0,ln2,1500,ln2);
ln2+=30;
line(0,ln2,1500,ln2);
ln2+=30;
line(0,ln2,1500,ln2);
ln2+=30;
line(0,ln2,1500,ln2);
ln2+=30;
line(0,ln2,1500,ln2);
line(0,ln2,1500,ln2);
ln2+=30;
line(0,ln2,1500,ln2);
ln2+=30;
line(0,ln2,1500,ln2);
ln2+=30;

ln2+=30;
// vertical lines  
line(20,0,20,900);
line(50,0,50,900);
line(80,0,80,900);
line(110,0,110,900);
line(140,0,140,900);
line(170,0,170,900);
line(200,0,200,900);
line(230,0,230,900);
line(260,0,260,900);
line(290,0,290,900);
line(320,0,320,900);
line(350,0,350,900);
line(380,0,380,900);
line(410,0,410,900);
 line(440,0,440,900);
line(470,0,470,900);
line(ln1,0,ln1,900);
ln1+=30;
line(ln1,0,ln1,900);
ln1+=30;
line(ln1,0,ln1,900);
ln1+=30;
line(ln1,0,ln1,900);
ln1+=30;
line(ln1,0,ln1,900);
ln1+=30;
line(ln1,0,ln1,900);
ln1+=30;
line(ln1,0,ln1,900);
ln1+=30;
line(ln1,0,ln1,900);
ln1+=30;
line(ln1,0,ln1,900);
ln1+=30;
line(ln1,0,ln1,900);
ln1+=30;
line(ln1,0,ln1,900);
ln1+=30;
line(ln1,0,ln1,900);
ln1+=30;
line(ln1,0,ln1,900);
ln1+=30;
line(ln1,0,ln1,900);
ln1+=30;
line(ln1,0,ln1,900);
ln1+=30;
line(ln1,0,ln1,900);
ln1+=30;
line(ln1,0,ln1,900);
ln1+=30;
line(ln1,0,ln1,900);
ln1+=30;
line(ln1,0,ln1,900);
ln1+=30;
line(ln1,0,ln1,900);
ln1+=30;
line(ln1,0,ln1,900);
ln1+=30;
line(ln1,0,ln1,900);
ln1+=30;
line(ln1,0,ln1,900);
ln1+=30;
line(ln1,0,ln1,900);
ln1+=30;
line(ln1,0,ln1,900);
ln1+=30;
line(ln1,0,ln1,900);
ln1+=30;
line(ln1,0,ln1,900);
ln1+=30;
line(ln1,0,ln1,900);
ln1+=30;
line(ln1,0,ln1,900);
ln1+=30;
line(ln1,0,ln1,900);
ln1+=30;
line(ln1,0,ln1,900);
ln1+=30;
line(ln1,0,ln1,900);
ln1+=30;
line(ln1,0,ln1,900);
ln1+=30;
line(ln1,0,ln1,900);
ln1+=30;
line(ln1,0,ln1,900);
ln1+=30;
line(ln1,0,ln1,900);
ln1+=30;
line(ln1,0,ln1,900);
ln1+=30;
line(ln1,0,ln1,900);
ln1+=30;
line(ln1,0,ln1,900);
ln1+=30;
line(ln1,0,ln1,900);
ln1+=30;
line(ln1,0,ln1,900);
ln1+=30;
line(ln1,0,ln1,900);
ln1+=30;
line(ln1,0,ln1,900);
ln1+=30;
line(ln1,0,ln1,900);
ln1+=30;
line(ln1,0,ln1,900);
ln1+=30;
line(ln1,0,ln1,900);
ln1+=30;
line(ln1,0,ln1,900);
ln1+=30;
line(ln1,0,ln1,900);
ln1+=30;
line(ln1,0,ln1,900);
ln1+=30;
line(ln1,0,ln1,900);
ln1+=30;
line(ln1,0,ln1,900);
ln1+=30;
line(ln1,0,ln1,900);
ln1+=30;
line(ln1,0,ln1,900);
ln1+=30;
}

/* Schrod, Olynerikson



*/ 

// for PTNKD 1 is facing up 2 is right, 3 is down, 4 is left
int PTNKD = 1; 
PImage Goodtank = null;
PImage Badtank = null;
Goodtank = loadImage("tank.jpg");
Badtank = loadImage("Badtank.jpg");



void setup(){
size(1500,800);
background(#AFE4EA);

}

void draw(){
PalyerTNKM(30);

}


void redraw(){
  if(GemStet == 0){
    background(255);
    image(Goodtank,Hx-25,Hy-25,50,50);
    image(Badtank, Vx-25, Vy-25,50,50);

   }
}

void PlayerTNKM(int FSD, int RSD) { 
  redraw();
 if(GemStet == 0){
 
 if(keyPressed) {

   if (keyCode == UP) {
   
  

     if(PlayerTNKD = 1){
     Hy - FSD
     redraw();
  }
    else if(PlayerTNKD = 2){
    Hx + FSD
    redraw();
}
   else if(PlayerTNKD = 3){
   Hy + FSD
   redraw();
}
  else if(PlayerTNKD = 4){
  Hx - FSD
  redraw();
}
 }
 
if (keyCode = RIGHT){
  if (PlayerTNKD = 4){
    PlayerTNKD = 1;
}
else {
  PlayerTNKD += 1;
}

}
if(keyCode = LEFT){
  if(PlayerTNKD = 1){
    PlayerTNKD = 4;
}
else{
  PlayerTNKD -= 1;
}


}

  }


    if (Hx>=width) {
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

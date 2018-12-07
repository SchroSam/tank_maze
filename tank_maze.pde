/* Schrod, Olynerikson



*/ 

// for PTNKD 1 is facing up 2 is right, 3 is down, 4 is left
int GemStet = 0;
int PlayerTNKD = 1; 
PImage Goodtank = null;
PImage Badtank = null;
float Hx = 36;
float Hy = 40;


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
  int ln1 = 320;
  int ln2 = 30;
  if(GemStet == 0){
    background(255);
    image(Goodtank,Hx-25,Hy-25,50,50);
    //image(Badtank, Vx-25, Vy-25,50,50);
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
ln2+=30;


// vertical lines  
line(20,0,20,800);
line(50,0,50,800);
line(80,0,80,800);
line(110,0,110,800);
line(140,0,140,800);
line(170,0,170,800);
line(200,0,200,800);
line(230,0,230,800);
line(260,0,260,800);
line(290,0,290,800);
line(320,0,320,800);
line(350,0,350,800);
line(380,0,380,800);
line(410,0,410,800);
 line(440,0,440,800);
line(470,0,470,800);
line(ln1,0,ln1,800);
ln1+=30;
line(ln1,0,ln1,800);
ln1+=30;
line(ln1,0,ln1,800);
ln1+=30;
line(ln1,0,ln1,800);
ln1+=30;
line(ln1,0,ln1,800);
ln1+=30;
line(ln1,0,ln1,800);
ln1+=30;
line(ln1,0,ln1,800);
ln1+=30;
line(ln1,0,ln1,800);
ln1+=30;
line(ln1,0,ln1,800);
ln1+=30;
line(ln1,0,ln1,800);
ln1+=30;
line(ln1,0,ln1,800);
ln1+=30;
line(ln1,0,ln1,800);
ln1+=30;
line(ln1,0,ln1,800);
ln1+=30;
line(ln1,0,ln1,800);
ln1+=30;
line(ln1,0,ln1,800);
ln1+=30;
line(ln1,0,ln1,800);
ln1+=30;
line(ln1,0,ln1,800);
ln1+=30;
line(ln1,0,ln1,800);
ln1+=30;
line(ln1,0,ln1,800);
ln1+=30;
line(ln1,0,ln1,800);
ln1+=30;
line(ln1,0,ln1,800);
ln1+=30;
line(ln1,0,ln1,800);
ln1+=30;
line(ln1,0,ln1,800);
ln1+=30;
line(ln1,0,ln1,800);
ln1+=30;
line(ln1,0,ln1,800);
ln1+=30;
line(ln1,0,ln1,800);
ln1+=30;
line(ln1,0,ln1,800);
ln1+=30;
line(ln1,0,ln1,800);
ln1+=30;
line(ln1,0,ln1,800);
ln1+=30;
line(ln1,0,ln1,800);
ln1+=30;
line(ln1,0,ln1,800);
ln1+=30;
line(ln1,0,ln1,800);
ln1+=30;
line(ln1,0,ln1,800);
ln1+=30;
line(ln1,0,ln1,800);
ln1+=30;
line(ln1,0,ln1,800);
ln1+=30;
line(ln1,0,ln1,800);
ln1+=30;
line(ln1,0,ln1,800);
ln1+=30;
line(ln1,0,ln1,800);
ln1+=30;
line(ln1,0,ln1,800);
ln1+=30;
line(ln1,0,ln1,800);
ln1+=30;
line(ln1,0,ln1,800);
ln1+=30;
line(ln1,0,ln1,800);
ln1+=30;
line(ln1,0,ln1,800);
ln1+=30;
line(ln1,0,ln1,800);
ln1+=30;
line(ln1,0,ln1,800);
ln1+=30;
line(ln1,0,ln1,800);
ln1+=30;
line(ln1,0,ln1,800);
ln1+=30;
line(ln1,0,ln1,800);
ln1+=30;
line(ln1,0,ln1,800);
ln1+=30;
line(ln1,0,ln1,800);
ln1+=30;
line(ln1,0,ln1,800);
ln1+=30;
line(ln1,0,ln1,800);
ln1+=30;
line(ln1,0,ln1,800);
ln1+=30;

                              
                             
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

/* Schrod, Olynerikson
 */

// for PTNKD 1 is facing up 2 is up right, 3 is right, 4 is down right, 5 is down, 6 is down left, 7 is left, 8 is up left

int GemStet = 0;
int Player1TNKD = 1; 
int Player2TNKD = 1;
PImage Goodtank = null;
PImage Badtank = null;
PImage Explosion = null;
boolean upPressed = false;
boolean downPressed = false;
boolean rightPressed = false;
boolean leftPressed = false;
boolean wPressed = false;
boolean dPressed = false;
boolean sPressed = false;
boolean aPressed = false;
float Hx = 36;
float Hy = 40;
float Vx = 1450;
float Vy = 850;
int PLTRN = 1;

void setup() {
  Goodtank = loadImage("tankUp.jpg");
  Badtank = loadImage("BadtankUp.jpg");
  Explosion = loadImage("EXPLOSION.png");
  size(1500, 900);
  background(255);
}

void draw() {
  Player1TNKM(30);
  Player2TNKM(30);
  redrawM();
  HitReg();
}



void redrawM() {
  if (GemStet == 0) {

    background(255);
    image(Goodtank, Hx - 25, Hy - 25, 50, 50);
    image(Badtank, Vx - 25, Vy - 25, 50, 50);

    if (GemStet == 1) {
      image(Goodtank, Hx - 25, Hy -25, 50, 50);
      image(Explosion, Vx - 25, Vy - 25, 50, 50);
    }
  }
}

void keyPressed() {
  if (keyCode == UP) {
    upPressed = true;
  }
  if (keyCode == DOWN) {
    downPressed = true;
  }
  if (keyCode == LEFT) {
    leftPressed = true;
  }
  if (keyCode == RIGHT) {
    rightPressed = true;
  }
  if (key == 'w') {
    wPressed = true;
  }
  if (key == 'd') {
    dPressed = true;
  }
  if (key == 's') {
    sPressed = true;
  }
  if (key == 'a') {
    aPressed = true;
  }
  if (key == 'r') {
    GemStet = 0;
    Hx = 36;
    Hy = 40;
    Vx = 1450;
    Vy = 850;
  }
  
}

void keyReleased() {
  if (keyCode == UP) {
    upPressed = false;
  }
  if (keyCode == DOWN) {
    downPressed = false;
  }
  if (keyCode == LEFT) {
    leftPressed = false;
  }
  if (keyCode == RIGHT) {
    rightPressed = false;
  }
  if (key == 'w') {
    wPressed = false;
  }
  if (key == 'd') {
    dPressed = false;
  }
  if (key == 's') {
    sPressed = false;
  }
  if (key == 'a') {
    aPressed = false;
  }
}

void Player1TNKM(int FSD) {

  if (GemStet == 0) {
    if (upPressed) {
      Hy -= FSD;
    } else if (downPressed) {
      Hy += FSD;
    } else if (rightPressed) {
      Hx += FSD;
    } else if (leftPressed) {
      Hx -= FSD;
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

  if (upPressed) {
    Player1TNKD = 1;
  } else if (rightPressed) {
    Player1TNKD = 2;
  } else if (downPressed) {
    Player1TNKD = 3;
  } else if (leftPressed) {
    Player1TNKD = 4;
  }


  if (Player1TNKD == 1) {
    Goodtank = loadImage("tankUp.jpg");
  } else if (Player1TNKD == 2) {
    Goodtank = loadImage("tankRight.jpg");
  } else if (Player1TNKD == 3) {
    Goodtank = loadImage("tankDown.jpg");
  } else if (Player1TNKD == 4) {
    Goodtank = loadImage("tankLeft.jpg");
  }
}


void Player2TNKM(int FSD) {

  if (GemStet == 0) {



    if (wPressed) {
      Vy -= FSD;
    }

    if (dPressed) {
      Vx += FSD;
    }
    if (sPressed) {
      Vy += FSD;
    }
    if (aPressed) {
      Vx -= FSD;
    }


    if (Vx>=width) {
      Vx -= FSD;
    }
    if (Vx <= 0) {
      Vx += FSD;
    }
    if (Vy >= height) {
      Vy -= FSD;
    }
    if (Vy <= 0) {
      Vy += FSD;
    }
  } 

  if (wPressed) {
    Player2TNKD = 1;
  } else if (dPressed) {
    Player2TNKD = 2;
  } else if (sPressed) {
    Player2TNKD = 3;
  } else if (aPressed) {
    Player2TNKD = 4;
  }


  if (Player2TNKD == 1) {
    Badtank = loadImage("BadtankUp.jpg");
  } else if (Player2TNKD == 2) {
    Badtank = loadImage("BadtankRight.jpg");
  } else if (Player2TNKD == 3) {
    Badtank = loadImage("BadtankDown.jpg");
  } else if (Player2TNKD == 4) {
    Badtank = loadImage("BadtankLeft.jpg");
  }
}

void HitReg() {
  if (GemStet == 0) {
    //hit detection for the player and the enemy
    float dx = Hx - Vx;
    float dy = Hy - Vy;
    float distanceHV = sqrt(dx * dx + dy * dy);
    //good ol' pythatgorous
    if (distanceHV < 50) {
      GemStet = 3;
      textSize(50);
      fill(#050505);
      textAlign(CENTER);
      text("Crashed",width/2,height/2);
      if(PLTRN == 1){
        PLTRN = 2; 
      }
      if(PLTRN == 2){
       PLTRN = 1; 
      }
    }
  }
}
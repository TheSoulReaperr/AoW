float castleWidth = 171;
float castleHeight = 250;
float castleHp1 = 1000;
float castleHp2 = 3000;
float castleHp3 = 8000;
float castleHp4 = 20000;

Castle P1;
Castle P2;

void initCastles() {
  P1 = new Castle(0);
  P2 = new Castle(2000-castleWidth);
}

void drawCastles() {
  P1.Draw();
  P2.Draw();
}

class Castle {
  float x,y,w,h;
  float tHp,cHp;
  int level;
  PImage img1,img2,img3,img4;
  
  Castle(float _x) {
    w = castleWidth;
    h = castleHeight;
    x = _x;
    y = Bottom-h;
    level = 1;
    tHp = castleHp1;
    cHp = castleHp1;
    if(x<100) img1 = tc4a;
    else img1 = tc4b;
  }
  
  void Draw() {
    switch(level) {
      case 1 : image(img1,x,y,w,h);      
      //case 2 : image(img2,x,y,w,h);
      //case 3 : image(img3,x,y,w,h);
      //case 4 : image(img4,x,y,w,h);
    }    
  }
}

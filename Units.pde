
class Unit {
  int RunCount =0,AttackCount=0,DieCount;
  int state;
  int level = 3;
  int type,cost;
  int player = 1;
  float x,y,w,h;
  float Ax,Ay,Aw,Ah;
  float Dx,Dy,Dw,Dh;
  float tHp,cHp,speed,attack,range;
  PImage[] Run,Run0,Run1,Run2,Run3;
  PImage[] Attack,Attack0,Attack1,Attack2,Attack3;
  PImage[] Die,Die0,Die1,Die2,Die3;
  PImage Stand,Stand0,Stand1,Stand2,Stand3;
  
  Unit() { }
  
  void Draw() {
    state();
    selectImage();
    try {
    if(state == 0) {
      image(Run[RunCount],x-w/2,y-h/2,w,h);      
      RunCount++;
      move();
      if(RunCount >= Run.length) RunCount =0;      
    } else if(state == 1) {
      image(Attack[AttackCount],(x+Ax)-(w+Aw)/2,(y+Ay)-(h+Ah)/2,w+Aw,h+Ah);
      AttackCount++;
      if(AttackCount >= Attack.length) AttackCount=0;
    } else if(state == 3 && DieCount < Die.length){
      image(Die[DieCount],(x+Dx)-(w+Dw)/2,(y+Dy)-(h+Dh)/2,w+Dw,h+Dh);      
      DieCount++;
      if(DieCount == Die.length) state = 4;
    }
    }catch(Exception e) {
    println(e);
  }
  }
  
  void state() {
    if(mousePressed && state !=4) { state =3; } 
    else{ 
      if(player == 1) {
        for(Unit u: Player2.units) {
          if(x+range+w/2 >= u.x) {state = 1; break;}
          else if(x+w + range < P2.x+120) state = 0;
          else if(x+w + range >= P2.x+120) state = 1;
        }        
      } else if(player == 2) {
        for(Unit u: Player1.units) {
          if(x-range <= u.x+u.w/2) { state = 1; break; }
          else if(x - range > P1.x+P1.w-120) state = 0;
          else if(x - range <= P1.x+P1.w-120) state = 1;
        }
      }
    }
  }
  
  void update(float _x,float _y,float _w,float _h,float __x,float __y,float __w,float __h) {
    Ax = _x;  Ay = _y;  Aw = _w;  Ah = _h;
    Dx = __x;  Dy = __y;  Dw = __w;  Dh = __h;
  }
  
  void Set(float _w,float _h,float _s,float _hp,float _r) {
    //width,height,hp,speed,range
    w = _w;  h = _h;
    tHp = _hp; cHp = tHp;
    speed = _s;  range = _r;
  }
  
  void move() {
    if(player == 1)       x+=speed;
    else if(player == 2)  x-=speed;
  }
  
  void selectImage() {
    if(level == 0) {
      Run = Run0;
      Attack = Attack0;
      Stand = Stand0;
      Die = Die0;
    } else if(level == 1) {
      Run = Run1;
      Attack = Attack1;
      Stand = Stand1;
      Die = Die1;
    } else if(level == 2) {
      Run = Run2;
      Attack = Attack2;
      Stand = Stand2;
      Die = Die2;
    } else if(level == 3) {
      Run = Run3;
      Attack = Attack3;
      Stand = Stand3;
      Die = Die3;
    }
  }
}

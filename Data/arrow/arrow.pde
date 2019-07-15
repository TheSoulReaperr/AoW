PImage[] arrow,archer;
float a1x = 30,a1y = 150;
float a2x = 50,a2y = 163;
float ex = 1500,ey = 150;
float sp = 80;
int c1,c2;
ArrayList<Arrow> arrows;

void setup() {
  size(1300,250);
  frameRate(15);
  arrow = new PImage[5];
  archer = new PImage[10];
  arrows = new ArrayList<Arrow>();
  for(int i=0;i<arrow.length;i++)
    arrow[i] = loadImage("arrowR"+(i+1)+".gif");
  for(int i=0;i<archer.length;i++)
    archer[i] = loadImage("arAR"+(i+1)+".gif");
}

void draw() {
  background(255);
  image(archer[c1],a1x,a1y,54,66);
  //if(frameCount%2 ==0)
  c1++;
  if(c1 >= archer.length) c1 = 0;
  if(c1 == 6) arrows.add(new Arrow());
  for(Arrow a: arrows) {
    a.Draw();
  }
  image(archer[0],ex,ey,54,66);
  try {
  for(Arrow a : arrows) {
    if(a.x > ex+20) arrows.remove(a);
  }
  }catch(Exception e) {}
  ex-=5;
}

class Arrow {
  float x,y,w,h;
  float speed;
  int c2;
  int frames;
  int count;
  
  Arrow() {
    x = a1x+20;
    y =  145+sp/3;
    w = 37.5;
    h = 12;
    speed = sp;
    c2 = 0;
    frames = int((ex - a1x)/speed);
    frames *= 1;
    count = frames;
  }
  
  void Draw() {        
    if(c2 < 2) y -= speed/5;
    //else if (c2 < 2) y -= speed/10;
    else if (c2 > 2) y += speed/5;
    //else if (c2 > 3) y += speed*2;
    
    if(c2 == 0) {
      image(arrow[c2],x,y,32,22.4);
    } else if(c2 == 1) {
      image(arrow[c2],x,y,32,16);
    } else if(c2 == 2) {
      image(arrow[c2],x,y,32,10.4);
    } else if(c2 == 3) {
      image(arrow[c2],x,y,32,8.8);
    } else if(c2 == 4) {
      image(arrow[c2],x,y,32,16);
    }
    
    if(count == ceil(frames*1)) {
      c2++;
    } else if(count == ceil(frames*0.6)) {
      c2++;
    } else if(count == ceil(frames*0.4)) {
      c2++;
    } 
    else if(count == ceil(frames*00)) {
      c2++;
    }
    
    count--;
    x+=speed;
    if(c2 >= arrow.length) c2 = 0;
  }
}

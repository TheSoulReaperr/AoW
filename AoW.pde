float scrollMargin = 120;
float scrollSpeed = 40;
float Bottom = 400;
float translateX;
int populationLimit = 30;
int populationP1 = 0;
int populationP2 = 0;
int coin = 200;
int Rate = 20;

void setup() {
  size(1300,600);
  frameRate(Rate);
  //thread("loadImages");
  loadImages();
  initArray();
  initCastles();
}

void draw() {
  pushMatrix();
  translate(translateX, 0);
  background(255);
  drawCastles();
  drawArray();
  Translate();
  devMode();
  drawPalette();
  AI();
  populationP1 = Player1.units.size();
  populationP2 = Player2.units.size();
  popMatrix();
}

void Translate() {
  if (translateX<P1.x)  if (mouseX < scrollMargin)  translateX+=scrollSpeed;
  if (translateX+P2.x+P2.w > width+15)  if (mouseX > width-scrollMargin)  translateX-=scrollSpeed;
}

void devMode() {
  fill(0);
  textSize(11);
  textAlign(CENTER, CENTER);
  text(mouseX+":"+mouseY+"\n"+frameRate, width/2-translateX, 10);
  fill(200, 200, 255, 50);
  noStroke();
  rect(-translateX, 0, scrollMargin, height);
  rect(width-scrollMargin-translateX, 0, scrollMargin, height);
  //if(mousePressed)  if(population >=1)   Player1.units.get(0).cHp--;
}


void AI() {
  if(millis()%1000 > 0 && millis()%1000 < 10) {
    int r = int(random(0,5));
    float x = P2.x+P2.w;
    if (populationP2 < populationLimit) {
      if (r == 0)       Player2.Add(new Militia(x));
      else if(r == 1)   Player2.Add(new Archer(x));
      else if(r == 2)   Player2.Add(new Spear(x));
      else if(r == 3)   Player2.Add(new Scout(x));
      else if(r == 4)   Player2.Add(new Elephant(x));
    }
  }
}

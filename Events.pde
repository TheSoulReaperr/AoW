
void keyPressed() {
  if (populationP1 < populationLimit) {
    if (key == '1')       Player1.Add(new Militia(0));
    else if (key =='2')   Player1.Add(new Archer(0));
    else if (key =='3')   Player1.Add(new Spear(0));
    else if (key =='4')   Player1.Add(new Scout(0));
    else if (key =='5')   Player1.Add(new Elephant(0));
  }
  
  if(key == 'a') {
    for(Unit u: Player1.units) {
      if(u.type == 0) {
        switch(u.level) {
          case 0 : u.Set(50,50,4,40,0);  u.update(0,-5,20,30,-10,0,42,0);
          case 1 : u.Set(50,50,4,40,0);  u.update(0,0,20,-4,-10,0,10,10);
          case 2 : u.Set(45,55,5,40,0);  u.update(0,0,25,25,15,10,10,10);
        }
        u.level++;
      }
    }
  }
  
}

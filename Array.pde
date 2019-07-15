Units Player1;
Units Player2;

void initArray() {
  Player1 = new Units();
  Player2 = new Units();
}

void drawArray() {
  Player1.Draw();
  Player2.Draw();
}

class Units {
  ArrayList<Unit>units = new ArrayList<Unit>();
  Units(){}
  
  void Add(Militia u)  { units.add(u); }
  void Add(Archer u)   { units.add(u); }
  void Add(Spear u)    { units.add(u); }
  void Add(Scout u)    { units.add(u); }
  void Add(Elephant u) { units.add(u); }
  
  void Draw() {
    //for(Unit u: units)  if(u.type == 4)  u.Draw();
    //for(Unit u: units)  if(u.type == 3)  u.Draw();  
    for(Unit u: units)  u.Draw();
    try {
      for(Unit u: units) {
        if(u.cHp < 1 || u.state == 4) {
          units.remove(u);
        }
      }
    }catch(Exception e) {
    }
  }
}

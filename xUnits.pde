
class Militia extends Unit {
  Militia(float _x) {
    type = 0;
    RunCount = 0;
    AttackCount = 0;
    DieCount =0;
    if(_x<100) {
      player = 1;
      Run0 = militiaR;  Run1 = menR;  Run2 = swordR;  Run3 = champR;
      Attack0 = militiaAR;  Attack1 = menAR;  Attack2 = swordAR;  Attack3 = champAR;
      Stand0 = militiaSR;  Stand1 = menSR;  Stand2 = swordSR;  Stand3 = champSR;
      Die0 = militiaDR;  Die1 = menDR;  Die2 = swordDR;  Die3 = champDR;
    } else if(_x>100) {
      player = 2;
      Run0 = militiaL;  Run1 = menL;  Run2 = swordL;  Run3 = champL;
      Attack0 = militiaAL;  Attack1 = menAL;  Attack2 = swordAL;  Attack3 = champAL;
      Stand0 = militiaSL;  Stand1 = menSL;  Stand2 = swordSL;
      Stand3 = champSL;  Die0 = militiaDL;  Die1 = menDL;  Die2 = swordDL;  Die3 = champDL;
    }
    
    int L = level;
    if(L == 0) {
      Set(50,55,4,40,0);
      update(0,0,10,10,-10,0,42,0);   
    } else if(L == 1) {
      Set(50,50,4,40,0);
      update(0,-5,20,30,-10,0,42,0);    
    } else if(L == 2) {
      Set(50,50,4,40,0);
      update(0,0,20,-4,-10,0,10,10);
    } else if(L == 3) {
      Set(45,55,5,40,0);
      update(0,0,25,25,15,10,10,10);
    }
   if(x<100) x = _x-w;
    else x = _x+w;
    y = Bottom-h/2;
  }
}

class Archer extends Unit {
  Archer(float _x) {
    type = 1;   
    RunCount = 0;
    AttackCount = 0;
    DieCount =0;
    if(_x<100) {
      player = 1;
      Run0 = archerR;  Run1 = crossR;  Run2 = arbR;  Run3 = longR;
      Attack0 = archerAR;  Attack1 = crossAR;  Attack2 = arbAR;  Attack3 = longAR;
      Stand0 = archerSR;  Stand1 = crossSR;  Stand2 = arbSR;  Stand3 = longSR;
      Die0 = archerDR;  Die1 = crossDR;  Die2 = arbDR;  Die3 = longDR;
    } else if(_x>100) {
      player = 2;
      Run0 = archerL;  Run1 = crossL;  Run2 = arbL;  Run3 = longL;
      Attack0 = archerAL;  Attack1 = crossAL;  Attack2 = arbAL;  Attack3 = longAL;
      Stand0 = archerSL;  Stand1 = crossSL;  Stand2 = arbSL;  Stand3 = longSL;
      Die0 = archerDL;  Die1 = crossDL;  Die2 = arbDL;  Die3 = longDL;
    }
    
    int L = level;
    if(L == 0) {
      Set(70,55,4,40,100);
      update(8,-3,12,14,-10,13,60,40);
    } else if(L == 1) {
      Set(50,55,4,40,130);
      update(0,3,-5,-12,0,0,40,5);
    } else if(L == 2) {
      Set(50,60,4,40,150);
      update(5,5,5,-7,-5,5,40,0);
    } else if(L == 3) {
      Set(60,50,4,40,200);
      update(5,-5,-10,20,-23,3,0,0);
    }
   if(x<100) x = _x-w;
    else x = _x+w;
    y = Bottom-h/2;
  }
}

class Spear extends Unit {
  Spear(float _x) {
    type = 2; 
    RunCount = 0;
    AttackCount = 0;
    DieCount =0;
    if(_x<100) {
      player = 1;
      Run0 = spearR;  Run1 = pikeR;  Run2 = halbR;  Run3 = halbR;
      Attack0 = spearAR;  Attack1 = pikeAR;  Attack2 = halbAR;  Attack3 = halbAR;
      Stand0 = spearSR;  Stand1 = pikeSR;  Stand2 = halbSR;  Stand3 = halbSR;
      Die0 = spearDR;  Die1 = pikeDR;  Die2 = halbDR;  Die3 = halbDR;
    } else if(_x>100) {
      player = 2;
      Run0 = spearL;  Run1 = pikeL;  Run2 = halbL;  Run3 = halbL;
      Attack0 = spearAL;  Attack1 = pikeAL;  Attack2 = halbAL;  Attack3 = halbAL;
      Stand0 = spearSL;  Stand1 = pikeSL;  Stand2 = halbSL;  Stand3 = halbSL;
      Die0 = spearDL;  Die1 = pikeDL;  Die2 = halbDL;  Die3 = halbDL;
    }
    
    int L = level;
    if(L == 0) {
      Set(43,66,3,40,0);
      y = Bottom-h/2;
      y+=3;
      update(25,5,45,-12,-5,5,10,0);
    } else if(L == 1) {
      Set(40,66,4,40,20);
      y = Bottom-h/2;
      y+=3;
      update(30,5,50,-15,5,5,15,0);
    } else if(L == 2) {
      Set(45,66,4,40,20);
      y = Bottom-h/2;
      y+=3;
      update(10,5,50,10,25,5,40,0);
    } else if(L == 3) {
      Set(45,66,4,40,20);
      y = Bottom-h/2;
      y+=3;
      update(10,5,50,10,25,5,40,0);
    }
   if(x<100) x = _x-w;
    else x = _x+w;
  }
}

class Scout extends Unit {
  Scout(float _x) {
    type = 3;
    RunCount = 0;
    AttackCount = 0;
    DieCount =0;
    if(_x<100) {
      player = 1;
      Run0 = scoutR;  Run1 = lightR;  Run2 = knightR;  Run3 = paladinR;
      Attack0 = scoutAR;  Attack1 = lightAR;  Attack2 = knightAR;  Attack3 = paladinAR;
      Stand0 = scoutSR;  Stand1 = lightSR;  Stand2 = knightSR;  Stand3 = paladinSR;
      Die0 = scoutDR;  Die1 = lightDR;  Die2 = knightDR;  Die3 = paladinDR;
    } else if(_x>100) {
      player = 2;
      Run0 = scoutL;  Run1 = lightL;  Run2 = knightL;  Run3 = paladinL;
      Attack0 = scoutAL;  Attack1 = lightAL;  Attack2 = knightAL;  Attack3 = paladinAL;
      Stand0 = scoutSL;  Stand1 = lightSL;  Stand2 = knightSL;  Stand3 = paladinSL;
      Die0 = scoutDL;  Die1 = lightDL;  Die2 = knightDL;  Die3 = paladinDL;
    }
    
    int L = level;
    if(L == 0) {
      Set(100,85,9,40,0);
      update(0,0,0,0,0,20,10,30);
    } else if(L == 1) {
      Set(100,80,8,40,0);
      update(0,-5,-5,10,0,10,5,5);
    } else if(L == 2) {
      Set(95,80,8,40,0);
      update(0,-7,-5,16,0,10,5,5);
    } else if(L == 3) {
      Set(90,85,8,40,0);
      update(0,-7,-5,16,0,10,5,5);
    }
   if(x<100) x = _x-w;
    else x = _x+w;
    y = Bottom-h/2;
  }
}

class Elephant extends Unit {
  Elephant(float _x) {
    type = 4;
    if(_x<100) {
      player = 1;
      Run0 = elephantR;
      Stand0 = elephantSR;
      Attack0 = elephantAR;
      Die0 = elephantDR;
      x = _x-w;
    } else {
      player = 2;
      Run0 = elephantL;
      Stand0 = elephantSL;
      Attack0 = elephantAL;
      Die0 = elephantDL;
      x = _x+w;
    }
    RunCount = 0;
    AttackCount = 0;
    DieCount = 0;
    Set(200,113,4,600,-30);
    y = Bottom-h/2;
    update(0,0,0,0,0,0,0,90);
  }
}

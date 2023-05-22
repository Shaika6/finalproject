 Clue clue1 = new Clue(1,"hi");
 Rooms room1 = new Rooms(1,"first","circle(224, 184, 220);");


void setup(){
   size(1300, 700);
}  


void draw(){
  fill(100,100,100);
  room1.getInstr();
  
}

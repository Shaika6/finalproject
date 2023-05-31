Objects right1_0 = new Objects(100,100,50);
Objects wrong1_1 = new Objects(600,250,40);
Objects right1 = new Objects(795,36,41,68);

Maze maze1 = new Maze();
 int curRoom = 1;
 int keynum = 1;

 boolean wrong1p =false;
 boolean obj2p =false;
void setup(){
   size(1000, 600);
   fill(#fafaf3);
   rect(0,500,1000,100); // note box
   note(0);
   room1();
}  


void draw(){
  if (wrong1_1.getP()) {
    note(-1);
    wrong1_1.press();
  }
  if (right1.getP()) note(2);
  if (curRoom==2) room2(); // YOU CHANGED HERE
  if (obj2p) note(3);
  //if (curRoom==3) room3();
}

void room1(){
  PImage img = loadImage("room.jpeg");
  image(img,0,0,1000,500);
  stroke(1);
  noFill();
  rect(795,36,41,68);
  
  noStroke();
  fill(#9a1b4d);
  circle(600,250,40); //wrong1
}

void room2(){
  PImage img = loadImage("dining.jpeg");
  image(img,0,0,1000,500);  
  fill(#990000);
  circle(294,157,12);
  circle(308,161,12);
  circle(280,161,12);
}

void room3(){
  maze1.drawMaze();
}

public void mousePressed(){
  if ( mouseX>=0 && mouseX <=1000 && mouseY >= 500 && mouseY <= 600){
    note(curRoom);
  } // show the current hint
  if (curRoom == 1){ // room1
    if ( mouseX>=right1.xcor && mouseX<=right1.xd && mouseY>=right1.ycor && mouseY<=right1.yd) right1.press();
    //if ( right1.getD() <= right1.getR() ) right1.press();
    if ( wrong1_1.getD() <= wrong1_1.getR() ) wrong1_1.press();
  }
  
}

void note(int n){
  fill(#fafaf3);
  rect(0,500,1000,100); 
  fill(#000000);
  textSize(30);
  if (n==-1){ 
    text("try again",100,510,500,700 );
    wrong1p = false;
  }
  if(n==0){
     text("You wake up and find yourself stuck in a creepy castle. Use the clues to find the right object and escape the room. Tap here for your first hint.",30,510,900,90 );
  }
  if (n==1){
    text("You must hurry, time is of essence.",30,510,500,90 );
  }
  
  if (n==2){
    text("hint 2",100,510,500,700 );
    right1.press();
    curRoom++;
  } 
  //if (n==3){
    //text("hint 3",100,510,500,90 );
  //}
  
}

public void maze(){
  fill(#00f4ff);
  ellipse(700,550,15,9);
}

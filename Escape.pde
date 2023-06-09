Objects wrong1 = new Objects();
Objects right1 = new Objects(795,36,41,68);
Objects end1 = new Objects();
Objects wrong3 = new Objects();
Objects right3 = new Objects(485,157,15);
Objects end2 = new Objects();
Objects right5 = new Objects(378,238,8,53);
Objects wrong5 = new Objects();
Objects right6 = new Objects(768,380,30);
Objects wrong6 = new Objects();

int cx= 25;
int cy= 275;

Maze maze1 = new Maze(1);
Maze maze2 = new Maze(2);

int curRoom = 1;
int curMaze = 1;

void setup(){
   size(1000, 600);
   fill(#fafaf3);
   rect(0,500,1000,100); // note box
   note(0);
   room1();
}  

void draw(){
  if (wrong1.getP()) {
    note(-1);
    wrong1.press();
  }
  if (wrong3.getP()) {
    note(-1);
    wrong3.press();
  }
  if (right1.getP()) {
    note(2);
    curRoom++;
    right1.press();
  }
  if (curRoom==2) room2(); 
  if (end1.getP() ) {
    note(3);
    curRoom++;
    end1.press();
  }
  if (curRoom==3) room3();
  if (right3.getP()) {
    note(4);
    curRoom++;
    right3.press();
  }
  if (curRoom==4) room4();
  if (end2.getP() ) {
    note(5);
    curRoom++;
    end2.press();
  }
  if (curRoom==5) room5();
  if (right5.getP()) {
    note(6);
    curRoom++;
    right5.press();
  }
  if (curRoom==6) room6();
  if (right6.getP()) {
    note(7);
    curRoom++;
    right6.press();
  }
  if (curRoom==7) end();
}

void room1(){
  PImage img = loadImage("room.jpeg");
  image(img,0,0,1000,500);
  noStroke();
  noFill();
  rect(795,36,41,68); //right1
  circle(771,215,57); 
}

void room2(){
  maze1.drawMaze();
  fill(#FF5353);
  circle(cx, cy, 30);
  if (cx==975 && cy==275){
    end1.press();
    cx=25;
    cy=275;
    curMaze++;
  }
}

void room3(){
  PImage img = loadImage("dining.jpeg");
  image(img,0,0,1000,500); 
  fill(#990000);
  circle(294,157,15); //right3
  circle(308,161,12);
  circle(280,161,12);
  fill(#680839);
  circle(485,157,15);
  circle(499,161,12);
  circle(471,161,12);
}

void room4(){
  maze2.drawMaze();
  fill(#FF5353);
  circle(cx, cy, 30);
  if (cx==975 && cy==275){
    end2.press();
  }
}

void room5(){
  PImage img = loadImage("library.jpeg");
  image(img,0,0,1000,500); 
  fill(#674ea7);
  rect(378,238,8,53);
}

void room6(){
  PImage img = loadImage("greenhouse.jpeg");
  image(img,0,0,1000,500); 
  fill(#B30000);
  circle(723,310,30);
  circle(768,310,30);
  circle(813,310,30);
  circle(723,345,30);
  circle(768,345,30);
  circle(813,345,30);
  circle(723,380,30);
  circle(768,380,30);
  circle(813,380,30);
  fill(0);
  textSize(25);
  text(1,720,313);
  text(2,765,313);
  text(3,810,313);
  
  text(4,720,348);
  text(5,765,348);
  text(6,810,348);
  
  text(7,720,383);
  text(8,765,383); //right6
  text(9,810,383);
}

void end(){
  PImage img = loadImage("end.jpeg");
  image(img,0,0,1000,500); 
}

public void keyPressed(){
 if(key==CODED){
   if (curMaze==1 && curRoom==2){
     if(keyCode==RIGHT && maze1.check(cx+50,cy)){
       cx+=50;
       room2();
     }  
     if(keyCode==UP && maze1.check(cx,cy-50)){
       cy-=50;
       room2();
     } 
     if(keyCode==DOWN && maze1.check(cx,cy+50)){
       cy+=50;
       room2();
     }
     if(keyCode==LEFT && maze1.check(cx-50,cy)){
       cx-=50;
       room2();
     }
   }
   else if (curMaze==2 && curRoom==4){
     if(keyCode==RIGHT && maze2.check(cx+50,cy)){
       cx+=50;
       room4();
     }  
     if(keyCode==UP && maze2.check(cx,cy-50)){
       cy-=50;
       room4();
     } 
     if(keyCode==DOWN && maze2.check(cx,cy+50)){
       cy+=50;
       room4();
     }
     if(keyCode==LEFT && maze2.check(cx-50,cy)){
       cx-=50;
       room4();
     }
   }
 }
}


public void mousePressed(){
  if ( mouseX>=0 && mouseX <=1000 && mouseY >= 500 && mouseY <= 600){
    note(curRoom);
  } // show the current hint
  else if (curRoom == 1){ // room1
    if ( mouseX>=right1.xcor && mouseX<=right1.xd && mouseY>=right1.ycor && mouseY<=right1.yd) right1.press();
    else  wrong1.press();
  }
  else if (curRoom == 3){ // room3
    if ( right3.getD() <= right3.getR() ) right3.press();
    else  wrong3.press();
  }
  else if (curRoom == 5){ // room5
    if ( mouseX>=right5.xcor && mouseX<=right5.xd && mouseY>=right5.ycor && mouseY<=right5.yd) right5.press();
    else  wrong5.press();
  }
  else if (curRoom == 6){ // room6
    if ( right6.getD() <= right6.getR() ) right6.press();
    else  wrong6.press();
  }
}

void note(int n){
  fill(#fafaf3);
  rect(0,500,1000,100); 
  fill(#000000);
  textSize(30);
  if (n==-1) text("try again",100,510,500,700 );
  if(n==0){
     text("You wake up and find yourself stuck in a creepy castle. Use the clues to find the right object and escape the room. Tap here to see hints.",30,510,900,90 );
  }
  if (n==1)text("You must hurry, time is of the essence.",30,510,500,90 );
  if (n==2)text("The hallways are so confusing. Use the arrow keys to navigate",100,510,700,90 );
  if (n==3)text("Roses are red, violets are blue. Both of them, are not for you.",100,510,700,90 );
  if (n==4) text("Another hallway??",100,510,500,700 );
  if (n==5)text("You should always hold a book by its spine. #674ea7 ",100,510,700,90 );
  if (n==6)text("The sequence of nature: 0, 1, 1, 3, 5, _",100,510,700,90 );
  if (n==7)text("You Escaped!",100,510,500,90 );
  
}

public void maze(){
  fill(#00f4ff);
  ellipse(700,550,15,9);
}

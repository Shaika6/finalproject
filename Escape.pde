Objects right1 = new Objects(100,100,50);
 int curRoom = 1;
 int keynum = 1;

 boolean wrong1p =false;
 boolean obj2p =false;
void setup(){
   size(1000, 600);
   fill(#fafaf3);
   rect(0,500,1000,100); // note box
   note(0);
}  


void draw(){
  room1();
  if (wrong1p) note(-1);
  if (right1.getP()) note(2);
  if (curRoom==2) room2();
  if (obj2p) note(3);
}

void room1(){
  PImage img = loadImage("pink.jpg");
  image(img,0,0,1000,500);
  noStroke();
  fill(#530b26);
  circle(100,100,50); // right
  fill(#9a1b4d);
  circle(600,250,40); //wrong1
}

void room2(){
  PImage img = loadImage("pink.jpg");
  image(img,0,0,1000,500);
}

public void mousePressed(){
  if ( mouseX>=0 && mouseX <=1000 && mouseY >= 500 && mouseY <= 600){
    note(curRoom);
  }
  if (curRoom == 1){ // room1
    if ( right1.getD() <= right1.getR() ) right1.press();
    
    float wrong1 = dist(mouseX, mouseY, 600, 250);
    if ( wrong1 <= 40/2 ) wrong1p=true;
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
     text("hi ur like stuck.click anywhere on box for hint",100,510,900,90 );
  }
  if (n==1){
    text("hint 1",100,510,500,90 );
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

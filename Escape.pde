 Clue clue1 = new Clue(1,"congrats! hint 2");
 Clue clue2 = new Clue(2,"insert hint 2 pure gibberish for testung this code snd thisfy idk");
 int curRoom = 1;
 boolean obj1p =false;
 boolean wrong1p =false;

void setup(){
   size(1000, 600);
   fill(#fafaf3);
   rect(0,500,1000,100); // note box
   note(-1);
}  


void draw(){
  room1();
  if (wrong1p) note(0);
  if (obj1p) note(clue1.getnum());
  if (curRoom==2) room2();
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
  PImage img = loadImage("light.png");
  image(img,0,0,1000,500);
  circle(500,300,60); // idk
  
}

public void mousePressed(){
  if (curRoom ==1){ // room1
  float obj1 = dist(mouseX, mouseY, 100, 100);
  if (obj1 <= 50/2 ) obj1p=true;
  float wrong1 = dist(mouseX, mouseY, 600, 250);
  if ( wrong1 <= 40/2 ) wrong1p=true;
  }
}

void note(int n){
  fill(#fafaf3);
  rect(0,500,1000,100); 
  fill(#000000);
  textSize(30);
  if(n==-1){
     text("hi ur like stuck, hint 1",100,520,500,700 );
  }
  if (n==0){ 
    text("try again",100,520,500,700 );
    wrong1p = false;
  }
  if (n==1){
    text(clue1.gethint(),100,520,500,700 );
    obj1p = false;
    curRoom++;
  } 
  if (n==2){
    text(clue2.gethint(),80,520,500,700 );
  }

}

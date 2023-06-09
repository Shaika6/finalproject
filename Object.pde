public class Objects {
  boolean pressed;
  float dist;
  int xcor, ycor, diam;
 
  int xd,yd;
  
  public Objects(){
    pressed = false;
  }
  
  public Objects(int x, int y,int d){
    pressed = false;
    xcor=x;
    ycor=y;
    diam=d;
  }
  
  public Objects(int x, int y,int w,int h){
    pressed = false;
    xcor=x;
    ycor=y;
    xd=x+w;
    yd=y+h;
  }  
  
  public void press(){
    pressed = !pressed;
  }
  
  public boolean getP(){
    return pressed;
  }
  
  public float getD(){
    dist = dist(mouseX, mouseY, xcor, ycor);
    return dist;
  }
  
  public float getR(){
    return (diam/2);
  }
  
}

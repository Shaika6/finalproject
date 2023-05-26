public class Objects {
  boolean pressed;
  float dist;
  int xcor, ycor, diam;
  
  public Objects(int x, int y,int d){
    pressed = false;
    xcor=x;
    ycor=y;
    diam=d;
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
  
  public int getR(){
    return diam/2;
  }
  
}

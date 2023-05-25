class Key{
color col;
boolean used;
boolean got;
  public Key(color c){
    col=c;
    used=false;
    got = false;
  }
  
public void use(){
  used=!used;
  }
public color getColor(){
  return col;
}

public void keyGot(){
  got = true;
}

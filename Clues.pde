public class Clue {
  int cluenum;
  String hint;
  
  
  public Clue(int num, String words){
    cluenum=num;
    hint=words;
  }
  
  public int getnum(){
    return cluenum;
  }  
  public String gethint(){
    return hint;
  }

}

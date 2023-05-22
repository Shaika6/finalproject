public class Clue {
  int cluenum;
  String content;
  
  
  public Clue(int num, String words){
    cluenum=num;
    content=words;
  }
  
  public int getnum(){
    return cluenum;
  }  
  public String getcontent(){
    return content;
  }

  public String toString(){
     return ( cluenum + ". "+ content);
  }
}

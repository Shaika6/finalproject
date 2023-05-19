public class Clues {
  int cluenum;
  String content;
  
  public Clues(int num, String words){
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

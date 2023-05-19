public class Rooms{
  int rnum;
  String rname;
  String format;
  public Rooms(int num, String name,String instr){
    rnum=num;
    rname=name;
    format=instr;
  }
  public int getnum(){
    return rnum;
  }  
  public String getname(){
    return rname;
  }
  
  public String getInstr(){
    return format;
  }
}

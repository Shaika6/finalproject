public class Maze{
static final int BLOCK_SIZE = 50;
boolean[][] maze= new boolean [500/BLOCK_SIZE][1000/BLOCK_SIZE];
  public Maze(int num){
    for (int i = 0; i < maze.length; i++) {
            for (int j = 0; j < maze[0].length; j++) {
                maze[i][j] = false;
            }
        }
    if (num==1){
      maze[5][0]=true;
      maze[5][4]=true;
      maze[7][7]=true;
      maze[1][3]=true;
      maze[2][11]=true;
      maze[7][11]=true;
      maze[4][16]=true;
      maze[4][17]=true;
      maze[5][19]=true;
      for(int i=2;i<9;i++){
        maze[i][1]=true;
      }
      for(int i=5;i<9;i++){
        maze[i][18]=true;
      }
      for(int i=1;i<4;i++){
        maze[i][18]=true;
      }
      for(int i=1;i<7;i++){
        maze[2][i]=true;
      }
      for(int i=1;i<10;i++){
        maze[8][i]=true;
      }
      for(int i=1;i<5;i++){
        maze[6][i]=true;
      }
      for(int i=3;i<11;i++){
        maze[4][i]=true;
      }
      for(int i=7;i<12;i++){
        maze[6][i]=true;
      }
      for(int i=6;i<19;i++){
        maze[1][i]=true;
      }
      for(int i=11;i<17;i++){
        maze[3][i]=true;
      }
      for(int i=11;i<17;i++){
        maze[5][i]=true;
      }
      for(int i=11;i<19;i++){
        maze[8][i]=true;
      }
    }  
    if (num==2){
      maze[5][0]=true;
      maze[2][1]=true;
      maze[8][2]=true;
      maze[8][3]=true;
      maze[2][17]=true;
      maze[4][16]=true;
      maze[2][18]=true;
      maze[5][11]=true;
      maze[5][13]=true;
      maze[6][7]=true;
      maze[7][12]=true;
      maze[6][14]=true;
      maze[3][18]=true;
      for(int i=5;i<9;i++){
        maze[i][1]=true;
      }
      for(int i=3;i<9;i++){
        maze[i][3]=true;
      }
      for(int i=1;i<8;i++){
        maze[3][i]=true;
      }
      for(int i=1;i<11;i++){
        maze[1][i]=true;
      }
      for(int i=3;i<7;i++){
        maze[5][i]=true;
      }
      for(int i=7;i<14;i++){
        maze[4][i]=true;
      }
      for(int i=3;i<10;i++){
        maze[7][i]=true;
      }
      for(int i=10;i<15;i++){
        maze[2][i]=true;
      }
      for(int i=14;i<17;i++){
        maze[3][i]=true;
      }
      for(int i=14;i<18;i++){
        maze[1][i]=true;
      }
      for(int i=9;i<16;i++){
        maze[8][i]=true;
      }
      for(int i=11;i<14;i++){
        maze[6][i]=true;
      }
      for(int i=15;i<19;i++){
        maze[7][i]=true;
      }
      for(int i=16;i<20;i++){
        maze[5][i]=true;
      }
    }
  }
  
  private void drawMaze() {
        for (int i = 0; i < maze.length; i++) {
            for (int j = 0; j < maze[0].length; j++) {
                if (maze[i][j]) {
                    fill(225); 
                } else {
                    fill(0);
                }
                noStroke();
                rect(j * BLOCK_SIZE, i * BLOCK_SIZE, BLOCK_SIZE, BLOCK_SIZE);
            }
        }
    }
    
public boolean check(int x,int y){
  int j = x/BLOCK_SIZE;
  int i = y/BLOCK_SIZE;
  return maze[i][j];
}

}

public class Maze{
static final int BLOCK_SIZE = 25;
boolean[][] maze= new boolean [500/BLOCK_SIZE][1000/BLOCK_SIZE];
  public Maze(){
    for (int i = 0; i < maze.length; i++) {
            for (int j = 0; j < maze[0].length; j++) {
                maze[i][j] = false;
            }
        }
    for (int i=0; i < 5;i++){
        maze[10][i]=true;
    }
    for (int i=35; i < 40;i++){
        maze[10][i]=true;
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
                rect(j * BLOCK_SIZE, i * BLOCK_SIZE, BLOCK_SIZE, BLOCK_SIZE);
            }
        }
    }
  
  


  //getmazde (i,j) returns  whether that spot is teufalse
  
}

public class Sudoku{
  
  private int[][] _board;
  
  Sudoku(){
    return;
  }
  
  public int add(int row, int col, int val){
    int oldVal = _board[row][col];
    _board[row][col] = val;
    return oldVal;
  }
  
  public int remove(int row, int col){
    int oldVal = _board[row][col];
    _board[row][col]= 0;
    return oldVal;
  }
  
  public int get(int row, int col){
    return _board[row][col];
  }
}
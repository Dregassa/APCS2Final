public class Sudoku {

  private Cell[][] _board;

  Sudoku() {
    return;
  }

  //returns the numbers available in the row of the cell
  public ArrayList<Boolean> getRow(int y) {
    ArrayList<Boolean> retList = new ArrayList();
    //Checking each spot in a specified row
    for (int i = 0; i < 9; i++) {
      //if the spot is empty, its corresponding spot in the array is false
      if (_board[i][y].getCurrentNum() == 0) {
        retList.add( i, false );
      }
      //if the spot is has a number, its corresponding spot in the array is true
      else {
        retList.add( i, true );
      }
    }
    return retList;
  }

  //returns the numbers available in the column of the cell
  public ArrayList<Boolean> getCol(int x) {
    ArrayList retList = new ArrayList();
    for (int i = 0; i < 9; i++) {
      //if the spot is empty, its corresponding spot in the array is false
      if (_board[x][i].getCurrentNum() == 0) {
        retList.add( i, false );
      }
      //if the spot is has a number, its corresponding spot in the array is true
      else {
        retList.add( i, true );
      }
    }
    return retList;
  }

  //returns the numbers available in the box of the cell
  public ArrayList<Boolean> getBox(int x, int y) {
    int box;
    ArrayList retList = new ArrayList();
    //determines which box the cell is in based on its x and y cor
    if (x < 4) {
      if (y < 4) {
        box = 1;
      } else if (y < 7) {
        box = 2;
      } else {
        box = 3;
      }
    } else if (x < 7) {
      if (y < 4) {
        box = 4;
      } else if (y < 7) {
        box = 5;
      } else {
        box = 6;
      }
    } else {
      if (y < 4) {
        box = 7;
      } else if (y < 7) {
        box = 8;
      } else {
        box = 9;
      }
    }
  //Checking box 1
    if (box == 1) {
      for (int i = 0; i < 4; i++) {
        for (int t = 0; t < 4; i++) {
          if (_board[i][t].getCurrentNum() == 0) {
            retList.add( i, false );
          }
          //if the spot is has a number, its corresponding spot in the array is true
          else {
            retList.add( i, true );
          }
        }
      }
    }
    return retList;
  }

  public int add(int row, int col, int val) {
    int oldVal = _board[row][col];
    _board[row][col] = val;
    return oldVal;
  }

  public int remove(int row, int col) {
    int oldVal = _board[row][col];
    _board[row][col]= 0;
    return oldVal;
  }

  public int get(int row, int col) {
    return _board[row][col];
  }
}
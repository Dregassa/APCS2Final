public class Sudoku {

  private Cell[][] _board;

  Sudoku() {
    return;
  }
  //returns the numbers available in the row of the cell
  public ArrayList<Boolean> getRow(int y) {
    ArrayList<Boolean> retList = new ArrayList(9);
    //Checking each spot in a specified row
    for (int i = 0; i < 9; i++) {
      //if the spot has a number, its corresponding spot in the array is false
      if (_board[i][y].getCurrentNum() == 0) 
        retList.set( _board[i][y].getCurrentNum()-1, false );
    }
    //fills in the rest with trues, the numbers that correspond to these spots can be placed in the cell
    for (int t = 0; t < 9; t++) {
      if (retList.get(t) == null)
        retList.set( t, true );
    }
    return retList;
  }

  //returns the numbers available in the column of the cell
  public ArrayList<Boolean> getCol(int x) { 
    ArrayList retList = new ArrayList(9);
    for (int i = 0; i < 9; i++) {
      //if the spot has a number, its corresponding spot in the array is false
      if (_board[x][i].getCurrentNum() == 0) 
        retList.set( _board[x][i].getCurrentNum()-1, false );
    }
    //fills in the rest with trues, the numbers that correspond to these spots can be placed in the cell
    for (int t = 0; t < 9; t++) {
      if (retList.get(t) == null)
        retList.set( t, true );
    }
    return retList;
  }

  //returns the numbers available in the box of the cell
  public ArrayList<Boolean> getBox(int x, int y) {
    int box;
    ArrayList retList = new ArrayList(9);
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

    //Checking boxes
    if (box == 1) {
      for (int i = 0; i < 4; i++) {
        for (int t = 0; t < 4; i++) {
          if (_board[i][t].getCurrentNum() != 0) 
            retList.set( _board[i][t].getCurrentNum()-1, false );
        }
      }
      //fills in the rest with trues, the numbers that correspond to these spots can be placed in the cell
      for (int t = 0; t < 9; t++) {
        if (retList.get(t) == null)
          retList.set( t, true );
      }
      return retList;
    }
    
    //Checking boxes
    if (box == 2) {
      for (int i = 4; i < 7; i++) {
        for (int t = 0; t < 4; i++) {
          if (_board[i][t].getCurrentNum() != 0) 
            retList.set( _board[i][t].getCurrentNum()-1, false );
        }
      }
      //fills in the rest with trues, the numbers that correspond to these spots can be placed in the cell
      for (int t = 0; t < 9; t++) {
        if (retList.get(t) == null)
          retList.set( t, true );
      }
      return retList;
    }
    
    //Checking boxes
    if (box == 3) {
      for (int i = 7; i < 10; i++) {
        for (int t = 0; t < 4; i++) {
          if (_board[i][t].getCurrentNum() != 0) 
            retList.set( _board[i][t].getCurrentNum()-1, false );
        }
      }
      //fills in the rest with trues, the numbers that correspond to these spots can be placed in the cell
      for (int t = 0; t < 9; t++) {
        if (retList.get(t) == null)
          retList.set( t, true );
      }
      return retList;
    }
    
    //Checking boxes
    if (box == 4) {
      for (int i = 0; i < 4; i++) {
        for (int t = 4; t < 7; i++) {
          if (_board[i][t].getCurrentNum() != 0) 
            retList.set( _board[i][t].getCurrentNum()-1, false );
        }
      }
      //fills in the rest with trues, the numbers that correspond to these spots can be placed in the cell
      for (int t = 0; t < 9; t++) {
        if (retList.get(t) == null)
          retList.set( t, true );
      }
      return retList;
    }
    
    //Checking boxes
    if (box == 5) {
      for (int i = 4; i < 7; i++) {
        for (int t = 4; t < 7; i++) {
          if (_board[i][t].getCurrentNum() != 0) 
            retList.set( _board[i][t].getCurrentNum()-1, false );
        }
      }
      //fills in the rest with trues, the numbers that correspond to these spots can be placed in the cell
      for (int t = 0; t < 9; t++) {
        if (retList.get(t) == null)
          retList.set( t, true );
      }
      return retList;
    }
    
    //Checking boxes
    if (box == 6) {
      for (int i = 7; i < 10; i++) {
        for (int t = 4; t < 7; i++) {
          if (_board[i][t].getCurrentNum() != 0) 
            retList.set( _board[i][t].getCurrentNum()-1, false );
        }
      }
      //fills in the rest with trues, the numbers that correspond to these spots can be placed in the cell
      for (int t = 0; t < 9; t++) {
        if (retList.get(t) == null)
          retList.set( t, true );
      }
      return retList;
    }
    
    //Checking boxes
    if (box == 7) {
      for (int i = 0; i < 4; i++) {
        for (int t = 7; t < 10; i++) {
          if (_board[i][t].getCurrentNum() != 0) 
            retList.set( _board[i][t].getCurrentNum()-1, false );
        }
      }
      //fills in the rest with trues, the numbers that correspond to these spots can be placed in the cell
      for (int t = 0; t < 9; t++) {
        if (retList.get(t) == null)
          retList.set( t, true );
      }
      return retList;
    }
    
    //Checking boxes
    if (box == 8) {
      for (int i = 4; i < 7; i++) {
        for (int t = 7; t < 10; i++) {
          if (_board[i][t].getCurrentNum() != 0) 
            retList.set( _board[i][t].getCurrentNum()-1, false );
        }
      }
      //fills in the rest with trues, the numbers that correspond to these spots can be placed in the cell
      for (int t = 0; t < 9; t++) {
        if (retList.get(t) == null)
          retList.set( t, true );
      }
      return retList;
    }
    
    //Checking boxes
    if (box == 9) {
      for (int i = 7; i < 10; i++) {
        for (int t = 7; t < 10; i++) {
          if (_board[i][t].getCurrentNum() != 0) 
            retList.set( _board[i][t].getCurrentNum()-1, false );
        }
      }
      //fills in the rest with trues, the numbers that correspond to these spots can be placed in the cell
      for (int t = 0; t < 9; t++) {
        if (retList.get(t) == null)
          retList.set( t, true );
      }
      return retList;
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
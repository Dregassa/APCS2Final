public class Sudoku {

    private int[][] _board;

    Sudoku() {
	_board = new int[9][9];
	for (int i = 0; i < 9; i++){
	    for (int t = 0; i < 9; i++){
		_board[i][t] = 0;
	    }
	}
	
    }
    
    //returns the numbers available in the row of the cell
    public boolean getRow(int y, int input) {
	for (int i = 0; i < 9; i++){
	    if (input == _board[i][y])
		return false;
	}
	return true;
    }

    //returns the numbers available in the column of the cell
    public boolean getCol(int x, int input) {
	for (int i = 0; i < 9; i++){
	    if (input == _board[x][i])
		return false;
	}
	return true;
    }

    //combined availability of numbers
    public boolean availability(int x, int y, int test){
	return getRow(y, test);
    }

    public void createPuzzle(){
	for (int i = 0; i < 3; i++){
	    for (int t = 0; t< 9; t++){
		int x = (int) (Math.random() * 9);
		int y = (int) (Math.random() * 9);
		while( _board[x][y] != 0 || availability(x,y,t+1)){
		    x = (int) (Math.random() * 9);
		    y = (int) (Math.random() * 9);
		}
		if( _board[x][y] == 0){
		    _board[x][y] = t+1;
		}
	    }
	}
    }

    public String toString(){
	String retstr = "";
	for (int i = 0; i < 9; i++){
	    for (int t = 0; t < 9; t++){
		retstr += _board[t][i];
		System.out.print(_board[t][i]+ " ");
	    }
	    System.out.println();
	}
	return retstr;
    }
    /*
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
    */

    public static void main(String[] args){
	Sudoku puzzle = new Sudoku();
	puzzle.createPuzzle();
	puzzle.toString();
    }
}

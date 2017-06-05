public class Sudoku2{

    //Using transformations to create unique puzzles
    int[][] _bo = new int[9][9];
    int[][] _boPuzzle = new int[9][9];

    Sudoku2(){
        _bo[0][0] = 5;
	_bo[0][1] = 3;
	_bo[0][2] = 4;
	_bo[0][3] = 6;
	_bo[0][4] = 7;
	_bo[0][5] = 8;
	_bo[0][6] = 9;
	_bo[0][7] = 1;
	_bo[0][8] = 2;
	_bo[1][0] = 6;
	_bo[1][1] = 7;
	_bo[1][2] = 2;
	_bo[1][3] = 1;
	_bo[1][4] = 9;
	_bo[1][5] = 5;
	_bo[1][6] = 3;
	_bo[1][7] = 4;
	_bo[1][8] = 8;
	_bo[2][0] = 1;
	_bo[2][1] = 9;
	_bo[2][2] = 8;
	_bo[2][3] = 3;
	_bo[2][4] = 4;
	_bo[2][5] = 2;
	_bo[2][6] = 5;
	_bo[2][7] = 6;
	_bo[2][8] = 7;
	_bo[3][0] = 8;
	_bo[3][1] = 5;
	_bo[3][2] = 9;
	_bo[3][3] = 7;
	_bo[3][4] = 6;
	_bo[3][5] = 1;
	_bo[3][6] = 4;
	_bo[3][7] = 2;
	_bo[3][8] = 3;
	_bo[4][0] = 4;
	_bo[4][1] = 2;
	_bo[4][2] = 6;
	_bo[4][3] = 8;
	_bo[4][4] = 5;
	_bo[4][5] = 3;
	_bo[4][6] = 7;
	_bo[4][7] = 9;
	_bo[4][8] = 1;
	_bo[5][0] = 7;
	_bo[5][1] = 1;
	_bo[5][2] = 3;
	_bo[5][3] = 9;
	_bo[5][4] = 2;
	_bo[5][5] = 4;
	_bo[5][6] = 8;
	_bo[5][7] = 5;
	_bo[5][8] = 6;
	_bo[6][0] = 9;
	_bo[6][1] = 6;
	_bo[6][2] = 1;
	_bo[6][3] = 5;
	_bo[6][4] = 3;
	_bo[6][5] = 7;
	_bo[6][6] = 2;
	_bo[6][7] = 8;
	_bo[6][8] = 4;
	_bo[7][0] = 2;
	_bo[7][1] = 8;
	_bo[7][2] = 7;
	_bo[7][3] = 4;
	_bo[7][4] = 1;
	_bo[7][5] = 9;
	_bo[7][6] = 6;
	_bo[7][7] = 3;
	_bo[7][8] = 5;
	_bo[8][0] = 3;
	_bo[8][1] = 4;
	_bo[8][2] = 5;
	_bo[8][3] = 2;
	_bo[8][4] = 8;
	_bo[8][5] = 6;
	_bo[8][6] = 1;
	_bo[8][7] = 7;
	_bo[8][8] = 9;
    }

    public String toString(){
	String retstr = "";
	for (int i = 0; i< 9; i++){
	    for (int t = 0; t< 9; t++){
		retstr += _bo[i][t] + " ";
	    }
	    retstr += "\n";
	}
	return retstr;
    }

    //transformations

    //reflection over y = -x
    public int[][] reflection(){
	int[][] _newBo = new int[9][9];
	for(int i = 0; i < 9; i++){
	    for(int t = 0; t<9; t++){
		_newBo[i][t] = _bo[t][i];
	    }
	}
	_bo = _newBo;
	return _bo;
    }

    //90 degree turn
    public int[][] nTurn(){
	int[][] _newBo = new int[9][9];
	for(int i = 0; i < 9; i++){
	    int[] row1 = new int[9];
	}
	_bo = _newBo;
	return _bo;
    }

    //swap triple groups
    public int[][] tripletSwap(){
	int rand = (int)(Math.random()*2);
	int[][] _newBo = new int [9][9];
	if(rand ==2){
	    for (int i = 0; i < 3; i++){
		for(int t = 0; t < 9; t++){
		    _newBo[i][t] = _bo[i+3][t];
		}
	    }
	    for (int i = 0; i < 3; i++){
		for(int t = 0; t < 9; t++){
		    _newBo[i+3][t] = _bo[i][t];
		}
	    }
	    for (int i = 0; i < 3; i++){
		for(int t = 0; t < 9; t++){
		    _newBo[i+6][t] = _bo[i+6][t];
		}
	    }
	}
	if(rand ==1){
	    for (int i = 0; i < 3; i++){
		for(int t = 0; t < 9; t++){
		    _newBo[i][t] = _bo[i+6][t];
		}
	    }
	    for (int i = 0; i < 3; i++){
		for(int t = 0; t < 9; t++){
		    _newBo[i+3][t] = _bo[i+3][t];
		}
	    }
	    for (int i = 0; i < 3; i++){
		for(int t = 0; t < 9; t++){
		    _newBo[i+6][t] = _bo[i][t];
		}
	    }
	}
	_bo = _newBo;
	return _bo;
    }
    //swap numbers
    public int[][] swapNums(){
	int rand = (int)(Math.random() * 2);
	if (rand == 0){
	    for (int i = 0; i < 9; i++){
		for (int t = 0; t < 9; t++){
		    if(_bo[i][t] == 1){
			_bo[i][t] = 9;
		    }
		    else if(_bo[i][t] == 9){
			_bo[i][t] = 1;
		    }
		}
	    }
	}
	else{
	    for (int i = 0; i < 9; i++){
		for (int t = 0; t < 9; t++){
		    if(_bo[i][t] == 4){
			_bo[i][t] = 5;
		    }
		    else if(_bo[i][t] == 5){
			_bo[i][t] = 4;
		    }
		}
	    }
	}
	return _bo;
    }

    //swap rows

    //swap columns

    //Row and Column Inspectors

    public int[] getRow(int y) {
	int[] ret = new int[9];
	for (int i = 0; i < 9; i++){
	    if (_bo[i][y] != 0)
		ret[i] = _bo[i][y];
	}
	return ret;
    }

    public int[] getCol(int x) {
        int[] ret = new int[9];
	for (int i = 0; i < 9; i++){
	    if (_bo[x][i] != 0)
		ret[i] = _bo[x][i];
	}
	return ret;
    }

    public int boxNum(int x, int y){
	return 1;
    }
    
    public int[] getBox(int x, int y){
	int box = boxNum(x, y);
	int[] ret = new int[9];
	return ret;
    }

    /*
    //When removing, checks the board to see if there is at least one spot where only one number would fit
    public boolean checkAll(){
	int solutionAvailable == 0;
	for(int i = 0; i < 9 ; i++){
	    for(int t = 0; t < 9; t++){
		if(_bo[i][t] == 0){
		    int[] teststr = getAll(i, t);
		    if (teststr.length == 1){
			solutionAvailable == 0;
		    }
		}
	    }
	}
	if(solutionAvailable == 0){
	    return false; 
	}
	else{
	    return true; 
	}
    }
	
    public int[][] removal(int difficulty){
	int numtoRemove = 0;
	if (difficulty == 1)
	    numtoRemove = 30;
	if (difficulty == 2)
	    numtoRemove = 40;
	if (difficulty == 3)
	    numtoRemove = 50;
	for (int i = 0; i < numtoRemove; i++){
	    int x = (int) (Math.random()*9);
	    int y = (int) (Math.random()*9);
	    int hold = _bo[x][y];
	    _bo[x][y] = 0;
	    if(checkAll){
		//checks if the removal still makes a one solution puzzle
	    }
	    else{
		i--; //if not, the number is not removed and the counter is reduced by 1
		_bo[x][y] = hold;
	    }
	}
    }
    */
    public static void main(String args[]){
	Sudoku2 su = new Sudoku2();
	System.out.println(su);
	su.tripletSwap();
	System.out.println(su);
    }

}

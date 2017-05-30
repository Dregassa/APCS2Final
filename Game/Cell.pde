public class Cell {
  private ArrayList validNums;
  private int currentNum;
  private String note;
  private int ycor;
  private int xcor;

  Cell() {
    currentNum = 0;
    note = "";
    validNums = new ArrayList();
  }

  Cell(int num, int x, int y, Sudoku s) {
    this();
    currentNum = num;
    validInputs(s);
    ycor = y;
    xcor = x;
  }

  public int getCurrentNum(){
    return currentNum;
  }

  public ArrayList validInputs(Sudoku s) {
    ArrayList<Boolean> a = compareRow(s);
    ArrayList<Boolean> b = compareCol(s);
    ArrayList<Boolean> c = compareBox(s);

    for (int i = 0; i < 9; i++) {
      if (a.get(i) && b.get(i) && c.get(i)) {
        validNums.add(i);
      }
    }
  }
  
  public ArrayList<Boolean> compareRow(Sudoku s){
    return s.getRow(ycor);
  }
  
  public ArrayList<Boolean> compareCol(Sudoku s){
    return s.getCol(xcor);
  }
  
  public ArrayList<Boolean> compareBox(Sudoku s){
    return s.getBox(xcor, ycor);
  }
}
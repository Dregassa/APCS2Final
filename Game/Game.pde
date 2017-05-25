void setup(){
  size(600,600);
  background(255);
  }
  
  
void draw(){
  drawTitle();
}
  


void drawTitle(){ // draws "SUDOKU" at the top of the page
  textSize(32);
  fill(255,0,0);
  textAlign(CENTER);
  text("SUDOKU", width/2 , 70);
  }
boolean AT_TITLE_SCREEN = true; 
int DIFFICULTY; 

void setup(){
  size(600,600);
  background(255);
  }
  
  
void draw(){
  if (AT_TITLE_SCREEN){
    drawTitle();
    drawCenteredTextBox("EASY", 200, 200, 100, #00FF00, #FF0000 );
    drawCenteredTextBox("MEDIUM", 350, 200, 100, #00FF00, #FF0000 );
    drawCenteredTextBox("HARD", 500, 200, 100, #00FF00, #FF0000 );
  }
  //else(){}
}
  


void drawTitle(){ // draws "SUDOKU" at the top of the page
  textSize(70);
  fill(255,0,0);
  textAlign(CENTER);
  text("SUDOKU", width/2 , 90);
  }
  
void drawCenteredTextBox(String text, float ycor, float w, float h, color boxColor, color textColor){
  rectMode(CENTER);
  fill(boxColor);
  rect(width/2, ycor, w, h, 20);
  textAlign(CENTER);
  fill(textColor);
  textSize(h/ 2);
  text(text, width/2, ycor + 3*h/8); // supposed to center text in box

}
int mode = 1; 
String GAMEMODE; 
Sudoku s1 = new Sudoku(2);

void setup() {
  size(630, 630); // divisible by 9
  background(255);
}


void draw() {
  background(255); //clears screen
  if (mode == 1) {
    drawTitle();
    drawCenteredTextBox("PLAY", 250, 200, 100, #00FF00, #FF0000 );
    drawCenteredTextBox("SOLVE", 450, 200, 100, #00FF00, #FF0000 );
  }
  if (mode == 2) {
    drawLines();
    drawNumbers();
    gameOn();
  }
}

void mouseClicked() {
  if (mode == 1)
    mode ++;
  if (mode == 2){
    int x = mouseX;
    int y = mouseY;
    int xcor = coordinateGet(x);
    int ycor = coordinateGet(y);
  }
}

void drawTitle() { // draws "SUDOKU" at the top of the page
  textSize(70);
  fill(255, 0, 0);
  textAlign(CENTER);
  text("SUDOKU", width/2, 90);
}

void drawCenteredTextBox(String text, float ycor, float w, float h, color boxColor, color textColor) {
  strokeWeight(2);
  rectMode(CENTER);
  fill(boxColor);
  rect(width/2, ycor, w, h, 20);
  textAlign(CENTER);
  fill(textColor);
  textSize(h/2);
  text(text, width/2, ycor + h/5); // supposed to center text in box
}

void drawLines() {
  strokeWeight(3); //draw 3x3 boxes
  line(width/3, 0, width/3, height);
  line(2*width/3, 0, 2*width/3, height);
  line(0, height/3, width, height/3);
  line(0, 2*height/3, width, 2*height/3);

  strokeWeight(1.5); //draw other lines
  //vertical lines
  line(width/9, 0, width/9, height);
  line(2*width/9, 0, 2*width/9, height);
  line(4*width/9, 0, 4*width/9, height);
  line(5*width/9, 0, 5*width/9, height);
  line(7*width/9, 0, 7*width/9, height);
  line(8*width/9, 0, 8*width/9, height);

  //horizontal lines
  line(0, height/9, width, height/9);
  line(0, 2*height/9, width, 2*height/9);
  line(0, 4*height/9, width, 4*height/9);
  line(0, 5*height/9, width, 5*height/9);
  line(0, 7*height/9, width, 7*height/9);
  line(0, 8*height/9, width, 8*height/9);
}

void drawNumbers() {
  textAlign(CENTER);
  fill(#FF0000);
  textSize(50);
  int width0 = width/18; // center of first box
  int height0 = height/18 + height/36; // center of first box

  //text("1", width0, height0); 
  //text("1", width0 + width/9, height0); 
  //text("1", width0 + 2*width/9, height0);

  for (int row = 0; row < 9; row++) {
    for (int col = 0; col < 9; col++) {
      if (s1.puzzle()[row][col] != 0) {
        text( str(s1.puzzle()[row][col]), width0 + col * width/9, height0 + row* height/9);
      }
    }
  }
}

void gameOn(){
  
}

int coordinateGet(int c){
  int cor=0;
  if(c < 70){
    cor = 1;
  }
  else if(c < 140){
    cor = 2;
  }
  else if(c < 210){
    cor = 3;
  }
  else if(c < 280){
    cor = 4;
  }
  else if(c < 350){
    cor = 5;
  }
  else if(c < 420){
    cor = 6;
  }
  else if(c < 490){
    cor = 7;
  }
  else if(c < 560){
    cor = 8;
  }
  else if(c < 630){
    cor = 9;
  }
  return cor;
}
boolean AT_TITLE_SCREEN = true; 
String GAMEMODE; 

void setup(){
  size(630,630); // divisible by 9
  background(255);
  }
  
  
void draw(){
  background(255); //clears screen
  if (AT_TITLE_SCREEN){
    drawTitle();
    drawCenteredTextBox("PLAY", 200, 200, 100, #00FF00, #FF0000 );
    drawCenteredTextBox("CREATE", 350, 200, 100, #00FF00, #FF0000 );
    drawCenteredTextBox("SOLVE", 500, 200, 100, #00FF00, #FF0000 );
  }
  else{
    drawLines();
    drawNumbers();
  }
}
  
void mouseClicked(){
  AT_TITLE_SCREEN = !AT_TITLE_SCREEN;
}

void drawTitle(){ // draws "SUDOKU" at the top of the page
  textSize(70);
  fill(255,0,0);
  textAlign(CENTER);
  text("SUDOKU", width/2 , 90);
  }
  
void drawCenteredTextBox(String text, float ycor, float w, float h, color boxColor, color textColor){
  strokeWeight(2);
  rectMode(CENTER);
  fill(boxColor);
  rect(width/2, ycor, w, h, 20);
  textAlign(CENTER);
  fill(textColor);
  textSize(h/2);
  text(text, width/2, ycor + h/5); // supposed to center text in box

}

void drawLines(){
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

void drawNumbers(){
  textAlign(CENTER);
  fill(#FF0000);
  textSize(50);
  int width0 = width/18; // center of first box
  int height0 = height/18 + height/36; // center of first box
  
  //text("1", width0, height0); 
  //text("1", width0 + width/9, height0); 
  //text("1", width0 + 2*width/9, height0);
  
  for (int row = 0; row < 9; row++){
    for (int col = 0; col < 9; col++){
      if(s[row][col] != 0){
        text( str(s[row][col]), width0 + col * width/9, height0 + row* height/9);
      }
    }
  }
}

void inputNum(){
  System.out.println();
}

int [][] foo = {{0,2,3,4,5,6,7,8,9},{1,2,3,4,5,6,7,8,9},{1,2,3,4,5,6,7,8,9},{1,2,3,4,5,6,7,8,9},{1,2,3,4,5,6,7,8,9},
                  {1,2,3,4,5,6,7,8,9},{1,2,3,4,5,6,7,8,9},{1,2,3,4,5,6,7,8,9},{1,2,3,4,5,6,7,8,9}};
}

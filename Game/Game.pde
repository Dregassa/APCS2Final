void setup(){
  size(600,600);
  background(255);
  }
  
  
void draw(){
  drawTitle();
}
  


void drawTitle(){ // draws "SUDOKO" at the top of the page
  textSize(32);
  fill(255,0,0);
  text("SUDOKO", width/2 , 70);
  }
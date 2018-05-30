class Rotater{
 
  public Rotater(){
  }

  void squareRotate(){
    background(51); 
    text("PRESS KEYBOARD FOR SATISFACTION: \n1-2D SPINNER...2-BUTTONS...3-SIN WAVE...4-TICKLER",30,20);
  fill(mouseY, mouseX,20);
  rect(mouseX, height/2, mouseY/2+10, mouseY/2+10);
  fill(mouseX, mouseY,0);
  int inverseX = width-mouseX;
  int inverseY = height-mouseY;
  rect(inverseX, height/2, (inverseY/2)+10, (inverseY/2)+10);
    
  }
  
}
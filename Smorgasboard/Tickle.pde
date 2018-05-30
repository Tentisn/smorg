class Tickle {
  
  SoundFile noise;
  String message = "tickle";
  float x, y; 
  float hr, vr; 

  Tickle(SoundFile f) {
  textFont(createFont("ComicSansMS-48.vlw", 25));
  hr = textWidth(message) / 2;
  vr = (textAscent() + textDescent()) / 2;
  noStroke();
  x = width / 2;
  y = height / 2;
  noise=f;
  }
  
void display() {

  fill(204, 120,0);
  rect(0, 0, width, height);
  
  // If the cursor is over the text, change the position
  if (abs(mouseX - x) < hr &&
      abs(mouseY - y) < vr) {
        if (mousePressed){
     noise.rate(.99);
     noise.play();
        }
    x += random(-5, 5);
    y += random(-5, 5);
  }
  fill(255,255,255);
  
  text("tickle", x, y);
  text("PRESS KEYBOARD FOR SATISFACTION: \n1-2D SPINNER...2-BUTTONS...3-SIN WAVE...4-TICKLER\nClick \"tickle\" for a Surprise",30,20);
}
}
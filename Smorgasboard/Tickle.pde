class Tickle {
  
  String message = "tickle";
  float x, y; 
  float hr, vr; 

  Tickle() {
  textFont(createFont("ComicSansMS-48.vlw", 25));
  hr = textWidth(message) / 2;
  vr = (textAscent() + textDescent()) / 2;
  noStroke();
  x = width / 2;
  y = height / 2;
  }
  
void display() {

  fill(204, 120,0);
  rect(0, 0, width, height);
  
  // If the cursor is over the text, change the position
  if (abs(mouseX - x) < hr &&
      abs(mouseY - y) < vr) {
    x += random(-5, 5);
    y += random(-5, 5);
  }
  fill(255,255,255);
  
  textSize(45);
  text("tickle", x, y);
}
}
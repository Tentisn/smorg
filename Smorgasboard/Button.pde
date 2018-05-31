class Button {
int dur = 0;
SoundFile grunt;
SoundFile hat;
SoundFile kick;
SoundFile snare;
//background(102);
  Button(SoundFile tim, SoundFile hiHat, SoundFile kickDrum, SoundFile snareDrum) {

    hat = hiHat;
    kick = kickDrum;
    snare = snareDrum;
    grunt = tim;

  }

  void display() {
    fill(250, 250, 0);
    rect (5, 5, 350, 350);

    fill(255, 0, 0);
    rect(365, 5, 350, 350);

    fill(0, 255, 0);
    rect(5, 365, 350, 350);

    fill(0, 0, 255);
    rect(365, 365, 350, 350);

    if (mousePressed&& mouseX<355 && mouseY<355) {
        square1();
    } else if (mousePressed &&mouseX>360 && mouseY<355) {
      square2();
    } else if (mousePressed &&mouseX>5 && mouseY>365 && mouseX<365) {
      square3();
    } else if (mousePressed &&mouseX>365&&mouseX<715 && mouseY>365&&mouseY<715) {
      square4();
    }
    if(!mousePressed){
    dur=0;
      }
  } 

  void square1() {
    while(mousePressed&&dur<1){
      grunt.rate(.5);
      grunt.play();
      println("yello");
      dur++;
    }
    cursor(HAND);
    fill(190, 190, 0);
    rect (5, 5, 350, 350);
  }

  void square2() {
    while(mousePressed&&dur<1){
      hat.play();
      println("red");
      dur++;
    }
    cursor(HAND);
    fill (200, 0, 0);
    rect(365, 5, 350, 350);
  }

  void square3() {
    while(mousePressed&&dur<1){
      kick.play();
      println("grn");
      dur++;
    }
    cursor(HAND);
    fill (0, 200, 0);
    rect(5, 365, 350, 350);
  }

  void square4() {
    while(mousePressed&&dur<1){
      snare.play();
      println("blu");
      dur++;
    }
    cursor(HAND);
    fill (0, 0, 200);
    rect(365, 365, 350, 350);
  }
}

class Button {
SoundFile noise;

  Button(SoundFile x) {

    //background(102);
    
    noise = x;

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

    if (mousePressed && mouseX<355 && mouseY<355 ) {
      square1();
      
    } else if (mousePressed &&mouseX>360 && mouseY<355 ) {
      square2();
    } else if (mousePressed &&mouseX>5 && mouseY>365 && mouseX<365 ) {
      square3();
    } else if (mousePressed &&mouseX>365&&mouseX<715 && mouseY>365&&mouseY<715) {
      square4();
    }
  } 

  void square1() {
    cursor(HAND);
    fill(190, 190, 0);
    rect (5, 5, 350, 350);
    println("yello");
    noise.rate(.5);
    noise.play();
  }

  void square2() {
    cursor(HAND);
    fill (200, 0, 0);
    rect(365, 5, 350, 350);
    println("red");
  }

  void square3() {
    cursor(HAND);
    fill (0, 200, 0);
    rect(5, 365, 350, 350);
    println("grn");
  }

  void square4() {
    cursor(HAND);
    println("blu");
    fill (0, 0, 200);
    rect(365, 365, 350, 350);
  }
}

  void square3() {
    cursor(HAND);
    fill (0, 200, 0);
    rect(5, 365, 350, 350);
    println("grn");
  }

  void square4() {
    cursor(HAND);
    println("blu");
    fill (0, 0, 200);
    rect(365, 365, 350, 350);
  }
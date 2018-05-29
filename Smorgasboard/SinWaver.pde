class SinWaver {
  float xspacing = 16.0;   // How far apart should each horizontal location be spaced
  int w;              // Width of entire wave
  int dur=0;
  int xPos=0;
  int yPos=0;
  float theta = 0.0;  // Start angle at 0
  float amplitude = 75.0;  // Height of wave
  float period = 500.0;  // How many pixels before the wave repeats
  float dx;  // Value for incrementing X, a function of period and xspacing
  float[] yvalues;  // Using an array to store height values for the wave

  SinWaver() {
  }

  void calcWave() {
    w = width+16;
    dx = (TWO_PI / period) * xspacing;
    yvalues = new float[w/(int)xspacing];
    // Increment theta (try different values for 'angular velocity' here
    theta += 0.02;

    // For every x value, calculate a y value with sine function
    float x = theta;
    for (int i = 0; i < yvalues.length; i++) {
      yvalues[i] = sin(x)*(((height/2)-mouseY));
      x+=dx;
    }
  }

  void renderWave() {
    noStroke();
    fill((int)((double)mouseX/width*255), (int)((double)mouseY/height*255), 255-(int)((double)mouseX/width*255));
    // A simple way to draw the wave with an ellipse at each location
    for (int x = 0; x < yvalues.length; x++) {
      if (mousePressed) {
        while (dur<1) {
          xPos=mouseX;
          yPos=mouseY;
          dur++;
        }
        xspacing=16+(((float)mouseX-xPos)/(width/16));
      } else {
        xspacing=16.0;
        dur=0;
      }
      ellipse(x*xspacing, height/2+yvalues[x], 16, 16);
    }
  }
}
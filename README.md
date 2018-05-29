# smorg
# Smorgasboard- An Extremely Satisfying Board

  Orignally our project was meant to be a Simon game, but we got caught up in the satisfying feel of pushing buttons. Instead of pursuing an idea that's been done time and time again, we thought of a new plan. We would make a program that compiled satisfying programs of our own and ones inspired by programs found on the processing website (with our own twist, of course ;)) We hope you enjoy the Smorgasboard of Satisfaction.

### Difficulties or opportunities you encountered along the way.

The toughest part was converting the original processing code into our own. The process was not as simple as copy and pasting into processing. We had to convert the code, which was in a runner form, into an object that could be put on our board. On top of that, making the Simon board was all us and getting the buttons to respond was a pain.

### Most interesting piece of your code and explanation for what it does.

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
  
This is the code for program 3 that adjusts the color based on where the mouse is and it allows interactivity with the wave.

## Built With

* [Processing](https://processing.org/) - The IDE used

## Authors

* **Nick Tentis and Gabe Molitor** 

## Acknowledgments

2d:
https://processing.org/examples/mouse2d.html

Sin Wave:
https://processing.org/examples/sinewave.html

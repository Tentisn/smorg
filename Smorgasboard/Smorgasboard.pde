import processing.sound.*;
SoundFile tim;
SoundFile hat;
SoundFile kick;
SoundFile snare;
SoundFile laugh;
Tickle t;
Button b;
Rotater r=new Rotater();
SinWaver w=new SinWaver();
int scene=1;
void setup() {
  size(720, 720); 
  tim = new SoundFile(this, "timAllen.mp3");
  hat = new SoundFile(this, "hiHat.wav");
  kick = new SoundFile(this, "bassDrum.wav");
  snare = new SoundFile(this, "snareDrum.wav");
  b=new Button(tim,hat,kick,snare);
  
  laugh=new SoundFile(this, "Kid_Laugh-Mike_Koenig-1673908713.mp3");
  t=new Tickle(laugh);
  //tim.play();

}

void draw() {
  background(51); 
  fill(255, 204);
  if (scene==1) {
    r.squareRotate();
  } else if (scene==2) {
    b.display();
  }
  else if (scene==3){
    w.calcWave();
    w.renderWave();
  }
   else if (scene==4){
   t.display();
  }
}

void keyTyped() {
  if (key=='1') {
    scene=1;
  } else if ((key=='2')) {
    scene=2;
  } 
  else if ((key=='3')) {
    scene=3;
  } 
    else if ((key=='4')) {
    scene=4;
  } 
  }

//https://github.com/APCS2017-2018/Tentis.N/tree/processing

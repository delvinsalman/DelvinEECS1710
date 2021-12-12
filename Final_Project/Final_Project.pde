//↓↓ MUST HAVE THESE LIBRARY DOWNLOADED IN ORDER TO PLAY THE SOUNDS (just a reminder) ↓↓
import ddf.minim.analysis.*;
import ddf.minim.*;
import ddf.minim.signals.*;
import gifAnimation.*;
Drops d[];
Gif gif;
Minim minim;
AudioOutput out;

void setup() {
  size(850, 350, P2D);
  noCursor();
  background(0);
  d=new Drops[500];
  for(int i=0;i<500;i++){
  d[i]=new Drops();
}
 gif = new Gif(this, "music.gif");
 gif.loop();
 imageMode(CENTER);
 noCursor();
 minim = new Minim(this);
 out = minim.getLineOut(Minim.STEREO);
}
 
void draw() {
  background(255,255,255);
  if (mousePressed) 
  gif.jump(0);
  rect(0,0,width,height);
  for(int i=0;i<500;i++){
  d[i].display();
  if(d[i].y>height)
  d[i]=new Drops();
}
  image(gif, mouseX, mouseY, 128, 128);
  for(int i = 0; i < out.bufferSize() - 1; i++) {
  float x1 = map(i, 0, out.bufferSize(), 10, width);
  float x2 = map(i+1, 0, out.bufferSize(), 0, width);
  line(x1, 50 + out.left.get(i)*50, x2, 50 + out.left.get(i+1)*50);
  line(x1, 150 + out.right.get(i)*50, x2, 150 + out.right.get(i+1)*50);
}
}

// importing peasy was not working, so thats why theres the error//
import peasy.*;

PShape ps1, ps2, ps3;
PeasyCam cam;

void setup() {
  size(800, 600, P2D);
  
cam = new PeasyCam(this, 400);

  ps1 = createShape();
  ps1.beginShape();
  ps1.fill(0,255,0);
  ps1.stroke(255, 127, 0);
  ps1.strokeWeight(10);
  ps1.vertex(width/2, height/2);
  ps1.stroke(255,0,0);
  ps1.vertex(width/2, height/2 + 100);
  ps1.stroke(0,0,255);
  ps1.vertex(width/2 + 100, height/2 + 100, -400);
  ps1.endShape(CLOSE);
  
  ps2 = loadShape("a.png");
  
  ps3 = loadShape("b.png");
}

void draw() {
  background(127);
  
  shape(ps1, -50, -50);
  
  shape(ps2, 130, 30);
  
  pushMatrix();
  scale(100, -100, 100);
  shape(ps3);
  popMatrix();
}

PImage kirby1;
int kirby1x, kirby1y, mx, my, g, Vky;

Drops d[];

void setup() { 
  kirby1 = loadImage("kirby1.png");
  size(850,625, P2D);
  background(0);
  d=new Drops[500];
  for(int i=0;i<500;i++){
  d[i]=new Drops();
   mx = 100;
  my = 50;
  g = 1;
}
 }

void draw() {
 image(kirby1, mx, my);
 my = my + Vky;
 Vky = Vky + g;
 fill(0,50);
 rect(0,0,width,height);
 for(int i=0;i<500;i++){
 d[i].display();
 if(d[i].y>height)
 d[i]=new Drops();
}
 }
 
 class Drops {
  float x,y,speed;
  color c;
  Drops(){
  x=random(width);
  y=random(-300,0);
  speed=random(5,10);
  c=color(random(255),random(255),random(255));
 }
 
 void update() {
   y+=speed;
 }
 
 void display() {
 fill(c);
 noStroke();
 rect(x,y,2,15);
 update();
}
 }
 
// Rapidly click the mouse to make kirby jump// 
 void mouseClicked() {
  Vky = -20;
}

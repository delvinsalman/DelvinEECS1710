class Drops {
  float x,y,speed;
  color c;
  Drops(){
  x=random(width);
  y=random(-300,0);
  speed=random(8,10);
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

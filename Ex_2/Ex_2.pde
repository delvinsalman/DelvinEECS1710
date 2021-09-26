PImage test, mario;
int testx, testy, mx, my, g, Vky;

void setup()
{ 
  size (750,625);
  test = loadImage("test.png");
  mario = loadImage("mario.png"); 
  mx = 100;
  my = 50;
  g = 1;
}

void draw()
{
  image(test, testx, testy);
  image(test, testx + test.width, testy);
  testx = testx -4;
  image(mario, mx, my);
  my = my + Vky;
  Vky = Vky + g;
  if(testx < -test.width)
  {
    testx = 0;
  }
}

void mouseClicked()
{
  Vky = -15;
}

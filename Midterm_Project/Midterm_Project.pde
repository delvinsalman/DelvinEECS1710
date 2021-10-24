PImage test, flappy, pipeup, pipedown;
int testx, testy, fx, fy, g, Vky;
int[] pipeX, pipeY; 
int gameState, score, highScore;

void setup()
{
  size(800,620);
  test = loadImage("test.png");
  flappy = loadImage("flappy.png");
  pipedown = loadImage("pipedown.png");
  pipeup = loadImage("pipeup.png");
  fx = 100;
  fy = 50;
  g = 1; 
  pipeX = new int[5];
  pipeY = new int[pipeX.length];
  for(int i = 0; i < pipeX.length; i++)
  {
    pipeX[i] = width + 200*i;
    pipeY[i] = (int)random(-350, 0);
  } 
  gameState = -1;
}

void draw()
{
  if(gameState == -1)
  {
    startScreen();  
  }
  else if(gameState==0)
  {
    settest();
    setPipes();
    flappy(); 
    displayScore();
  }
  else
  {
    endScreen();
    restart();
  }
}

void mousePressed()
{
   Vky = -15;  
}

void displayScore()
{
  if(score > highScore)
  {
    highScore = score;
  }
  fill(160,160,160, 200);
  rect(width-175, 10, 155, 80, 5);
  fill(0);
  textSize(32);
  text("Score: " + score, width - 170, 40);  
  text("High:  " + highScore, width - 170, 80);   
}

void endScreen()
{
    fill(150, 150, 250, 100);
    if(mouseX > 90 && mouseX < 595 && mouseY > 150 && mouseY < 290)
    {
      fill(150, 250, 150, 100);
    }
    rect(90, 150, 505, 140, 5);
    fill(0);
    textSize(40);
    text("FLAPPY DIED", 200,200);
    text("Click HERE To Play Again" , 100, 270);  
}
void startScreen()
{
  image(test, 0,0);
  textSize(45);
  text("Welcome To Flappy Bird!", 40, 100);
  text("Click The Mouse To Begin...", 40, 200);
  if(mousePressed)
  {
    fy = height/2;
    gameState = 0;
  }
}

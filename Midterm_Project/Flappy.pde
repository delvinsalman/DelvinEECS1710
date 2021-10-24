void flappy()
{
   image(flappy, fx, fy);
   fy = fy + Vky;
   Vky = Vky + g;  
   if(fy > height || fy < 0)
   {
     fill(random (255),random(255), random(255));
     textSize(24);
     text("OH NO!! FLAPPY DIED...", 20, 44);
     gameState=1;
   }
}

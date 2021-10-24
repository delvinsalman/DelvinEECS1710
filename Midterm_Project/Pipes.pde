void setPipes(){
  for(int i = 0; i < pipeX.length; i++)
  {
   image(pipeup, pipeX[i], pipeY[i]);
   image(pipedown, pipeX[i], pipeY[i] + 680);
   pipeX[i]-=2;
   
   if(score > 10)
   {
     pipeX[i]--; 
   }
   if(score > 20)
   {
     pipeX[i]--;    }
   if(pipeX[i] < -200)
   {
     pipeX[i] = width;  
   }
   
   if(fx > (pipeX[i] - 35) && fx < pipeX[i] + 92)
   {
   if(!(fy > pipeY[i] + 139 && fy < pipeY[i] + (449 + 131-29)))
     {
   gameState = 1;
     }
     
   else if (fx==pipeX[i] || fx == pipeX[i] + 1)
     {
   score++;  
     }
   }
  }  
}

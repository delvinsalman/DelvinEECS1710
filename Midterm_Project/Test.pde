void settest()
{
  image(test, testx, testy);
  image(test, testx + test.width, testy);
  testx--;
  if(testx < -test.width)
  {
     testx = 0; 
  }  
}

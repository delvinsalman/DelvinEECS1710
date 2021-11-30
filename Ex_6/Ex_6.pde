void setup() {
  size(800, 600, P2D);
  
  // using video, cause dont have webcam.
  //make it fullscreen when start.

 setupMovie("cat.mp4");
}

void draw() { 
  image(videoImg, 0, 0);
}

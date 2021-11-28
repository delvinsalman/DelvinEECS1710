//sound ex,tried to mix some effects and play around with the sound code.

import processing.sound.*;
Amplitude amplitude;
AudioIn in;
int specSize = 256;
float sampleRate = 44100;
float[] spectrum = new float[specSize];
int band = 0;
float amp = 0;
float freq = 0;

void setupSound() {
  amplitude = new Amplitude(this);
  in = new AudioIn(this, 0);
  in.start();
  amplitude.input(in);
}

void updateSound() {
  amp = getAmp();
}

float getAmp() {
  return amplitude.analyze();
}
float maxThreshold = 0.1;
float minThreshold = 0.01;

void setup() {
  size(800, 600, P2D);  
  setupSound();
}
float scaleAmp = 1000;
float scaleFreq = 1000;
void draw() {
  updateSound();
  
float amp = getAmp();
if (amp > maxThreshold) {
background(0,255,0);
}else if (amp < minThreshold) {
background(255,0,0);
updateSound();
println("amp: " + amp + " freq: " + freq);
rectMode(CENTER);
float fillValR = constrain(map(freq, 0, scaleFreq, 0, 255), 0, scaleFreq);
float fillValG = constrain(map(freq, 0, scaleFreq, 0, 127), 0, scaleFreq);
float fillValB = constrain(map(freq, 0, scaleFreq, 0, 63), 0, scaleFreq);
fill(fillValR, fillValG, fillValB);
rect(width/2, height - (amp * scaleAmp), 250, amp * scaleAmp);
}
}

//Some of the code is from https://github.com/eecs17xx/eecs1710-2021f repo, as well as the orignal mario image was found on the web, you can also see it in the data folder:)

import peasy.*;
PeasyCam cam;
PImage img;
ArrayList<Dot> dots;
int scaler = 10;
PImage img1, img2;
ArrayList<PVector> targets1, targets2;
color col1, col2;
int threshold = 200;
boolean imageToggled = false;


void setup() {
cam = new PeasyCam(this, 400);
size(50, 50, P3D); 
img1 = loadImage("mario.jpg");
img2 = loadImage("mario.jpg");
int w, h;
if (img1.width > img2.width) {
w = img1.width;
} else {
w = img2.width;
}
if (img1.height > img2.height) {
h = img1.height;
} else {
h = img2.height;
}
surface.setSize(w, h);
img1.loadPixels();
img2.loadPixels();
targets1 = new ArrayList<PVector>();
targets2 = new ArrayList<PVector>();
for (int x = 0; x < img2.width; x += scaler) {
for (int y = 0; y < img2.height; y += scaler) {
int loc = x + y * img2.width;
if (brightness(img2.pixels[loc]) > threshold) {
targets2.add(new PVector(x, y));
}
}
}
img = loadImage("mario.jpg");
surface.setSize(img.width, img.height);
img.loadPixels();
dots = new ArrayList<Dot>();
for (int x = 0; x < img.width; x += scaler) {
for (int y = 0; y < img.height; y += scaler) {
int loc = x + y * (img.width);
dots.add(new Dot(x, y, img.pixels[loc]));
}
}
}


void draw() { 
for (Dot dot : dots) {
dot.run();
}
surface.setTitle("" + frameRate);
background (random (35),(random (35)),(random (35 )));
blendMode(ADD);
boolean flipTargets = true;
for (Dot dot : dots) {
dot.run();
if (!dot.ready) flipTargets = false;
}
if (flipTargets) {
for (Dot dot : dots) {
if (!imageToggled) {
int targetIndex = int(random(0, targets1.size()));
dot.target = targets1.get(targetIndex);
dot.col = col2;
} else {
int targetIndex = int(random(0, targets2.size()));
dot.target = targets2.get(targetIndex);
dot.col = col1;
}
}
imageToggled = !imageToggled;
}
surface.setTitle("" + frameRate);
}

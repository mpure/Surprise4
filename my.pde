/* @pjs preload="dogedoge.jpg"; */

PImage img;

void setup()
{
  size(512,384);
  img = loadImage("dogedoge.jpg");
  background(255);
  frameRate(40);
}

void draw()
{
  for(int i = 0; i != 5; i++){
    int x = (int)random(0,512),
      y = (int)random(0,384);
    color c = img.get(x,y);
    fill(c);
    noStroke();
    ellipse(x,y,7,7);
  }
}
void keyPressed(){
  save("surprise.png");
}

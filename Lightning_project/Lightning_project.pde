float[] Xs = new float[5];
PImage lightning1;
PImage lightning2;
PImage lightning3;
PImage lightning4;
PImage lightning5;
PImage storm;
int y = 0;

void setup()
{
  size(800, 800);
  lightning1 = loadImage("L1.png");
  lightning2 = loadImage("L2.png");
  lightning3 = loadImage("L3.png");
  lightning4 = loadImage("L4.png");
  lightning5 = loadImage("L5.png");
  storm = loadImage("Storm.jpg");
  storm.resize(800, 800);
  for (int i = 0; i < 5; i++)
  {
    Xs[i] = random(0, 800);
  }
}

void draw()

{
  image(storm, 0, 0);
  image(lightning1, Xs[0], y);
  image(lightning2, Xs[1], y);
  image(lightning3, Xs[2], y);
  image(lightning4, Xs[3], y);
  image(lightning5, Xs[4], y);
  if (y > -100)
  { 
    y = -500;
  }
  y = y + 200;
  for (int i = 0; i < 5; i++)
  {
    Xs[i] = random(0, 800);
  }
}

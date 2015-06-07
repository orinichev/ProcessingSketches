int tileCount = 20;
color elCl= color(0,150,255, 100);

void setup()
{
  size(900,900);
  
  ellipseMode(RADIUS);
}

void draw()
{
  background(255,255,255);
  int tileWidth = width/tileCount;
  int tileHeight = height/tileCount;
  int radius = tileWidth/2+5;
  println(radius);
  fill(elCl);
  noStroke();
  for (int gridY=0; gridY<tileCount; gridY++)
  {
    for (int gridX = 0; gridX<tileCount; gridX++)
    {
      int ellipseY = gridY*tileHeight+tileHeight/2;
      int ellipseX = gridX*tileWidth+tileWidth/2;
      float d = dist(ellipseX, ellipseY, mouseX, mouseY);     
      float a = log(radius+1)/400;
      float ellipseRad = 1+ exp(a*d);
      println(ellipseRad);
      if (ellipseRad > radius)
      {
        ellipseRad = radius;
      }
      ellipse(ellipseX,ellipseY, ellipseRad, ellipseRad);     
    }
  }
}

import point2line.*;

void setup()
{
  colorMode(HSB, 360,100,100);
  background(0,0,100);
  noCursor();
  size(900,900);
}

void draw()
{
  translate(width/2, height/2);
  
  int shapeEdgeCount = (int) map(mouseY, 0, height, 3,20);
  
  float r = mouseX-width/2 + 0.5;
  float angleRad = TWO_PI/ shapeEdgeCount;
  Vect2 v = new Vect2(mouseX-width/2, mouseY-height/2);
  float angleGrad = v.angle();
  
  println(angleGrad);
  strokeWeight(1);
  stroke(angleGrad,100,100);
  beginShape();
  for (int i=0; i<= shapeEdgeCount;  i++)
  {
    float x= cos(angleRad*i)*r;
    float y = sin(angleRad*i)*r;
    line(0,0,x,y);
    vertex(x,y);
  }
  endShape(); 
  
}

void keyReleased()
{
  if (  key == 'c')
  {
    background(0,0,100);
  }
}




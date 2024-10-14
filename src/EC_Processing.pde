elipsoide Elipse2;

void setup()
{
  size(400,400);
  surface.setTitle("Nigger");
}

void draw()
{

}

void mouseClicked()
{
  float anch = random(10,200);
  float alt = random(10,200);
  Elipse2 = new elipsoide(mouseX, mouseY,anch,alt);
  Elipse2.display();
}

class elipsoide
{
  float xpos;
  float ypos;
  float alt;
  float anch;
  
  elipsoide(float tempXpos, float tempYpos, float tempAlt, float tempAnch)
  {
    xpos = tempXpos;
    ypos = tempYpos;
    alt = tempAlt;
    anch = tempAnch;
  }
  
  void display()
  {
    stroke(0);
    fill(255);
    rectMode(RADIUS);
    ellipse(xpos, ypos, anch, alt);
  }
}

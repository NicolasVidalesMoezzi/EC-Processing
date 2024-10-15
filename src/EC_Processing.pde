import processing.serial.*;

Serial port;
float val;

elipsoide Elipse2;

void setup()
{
  size(400,400);
  frameRate(10);
  surface.setTitle("Prueba");
  port = new Serial(this,"COM5",9600);
}

void draw()
{
  if(0 < port.available())
  {
    val = port.read();
    println(val);
  }
  if(val == 1)
  {
    crearObjeto();
  }
}

void crearObjeto()
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

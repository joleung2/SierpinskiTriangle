public void setup()
{
  size(600,600);
}
int x = 300;
int y = 300;
int len = 600;
public void draw()
{
  background(0);
  sierpinski(x,y,len);
}
void mouseWheel(MouseEvent event)//optional
{
  double t = event.getCount();
  len -= 50*t;
}
void mouseDragged() {
  int distanceX;
  int distanceY;
  if(mouseX>x) distanceX = mouseX - x;
  else distanceX = -1 * (x - mouseX);
  if(mouseY>y) distanceY = mouseY - y;
  else distanceY = -1 * (y - mouseY);
  x = mouseX + distanceX;
  y = mouseY + distanceY;
}
public void sierpinski(int realX, int realY, int len) 
{
  int x = realX - ( len / 4 );
  int y = realY + (len / 4);
  fill(255);
  if (len <= 9) {
    triangle(x, y, x+len, y, x +len/2,y-len);
  } else {
    sierpinski(x,y,len/2);
    sierpinski(x+len/2, y, len/2);
    sierpinski(x+len/4, y-len/2, len/2);

  }
}

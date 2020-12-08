class Asteroid extends Floater
{
  private int myRotation = (int)(Math.random()*5);
  public Asteroid()
  {
    corners = 6;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = -11;
    yCorners[0] = -8;
    xCorners[1] = 7;
    yCorners[1] = -8;
    xCorners[2] = 13;
    yCorners[2] = 0;
    xCorners[3] = 6;
    yCorners[3] = 10;
    xCorners[4] = -11;
    yCorners[4] = 8;
    xCorners[5] = -5;
    yCorners[5] = 0;
    myColor = color(200,255,255);
    myCenterX = (int)(Math.random()*5);
    myCenterY = (int)(Math.random()*5);
    myXspeed = (int)(Math.random()*5);
    myYspeed = (int)(Math.random()*5);
  }
  public void setX(int x)
    {
      myCenterX = x;
    }
  public int getX()
    {
      return (int)myCenterX;
    }
  public void setY(int y)
    {
      myCenterY = y;
    }
  public int getY()
    {
      return (int)myCenterY;
    }
  public void move()
  {
    turn(myRotation);
    super.move();
  }
}

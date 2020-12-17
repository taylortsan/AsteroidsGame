class Spaceship extends Floater  
{   
    public Spaceship() 
    {
      corners = 3;  //the number of corners, a triangular floater has 3   
      xCorners = new int[corners];   
      yCorners = new int[corners]; 
      //initialize corners
      xCorners[0] = -8;
      yCorners[0] = -8;
      xCorners[1] = 16;
      yCorners[1] = 0;
      xCorners[2] = -8;
      yCorners[2] = 8;
      myColor = color(255,0,100);   
      myCenterX = myCenterY = 250; //holds center coordinates   
      myXspeed = myYspeed = 0; //holds the speed of travel in the x and y directions   
      myPointDirection = (int)(Math.random()*360);
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
    public void setPointDirection(int degrees)
    {
      myPointDirection = degrees;
    }
    public double getPointDirection()
    {
      return myPointDirection;
    }
    public void setXspeed(double x)
    {
      myXspeed = x;
    }
    public void setYspeed(double y)
    {
      myYspeed = y;
    }
    //for bullet
    public double getXspeed()
    {
      return myXspeed;
    }
    public double getYspeed()
    {
      return myYspeed;
    }
    public double getPoint()
    {
      return myPointDirection;
    }
}

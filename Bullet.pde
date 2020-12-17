class Bullet extends Floater
{
  public Bullet(Spaceship lex){
    myCenterX = lex.getX();
    myCenterY = lex.getY();
    myXspeed = lex.getXspeed();
    myYspeed = lex.getYspeed();
    myPointDirection = lex.getPoint();
    accelerate(6); //must initialize point direction before moving it
  }
  public void show()
  {
    noStroke();
    fill(242,206,233);
    ellipse((float)myCenterX,(float)myCenterY,10,10);
  }
  public float getX()
  {
    return (float)myCenterX;
  }
  public float getY()
  {
    return (float)myCenterY;
  }
}

//your variable declarations here
Spaceship lex = new Spaceship();
Star[] bob = new Star[60];
public void setup() 
{
  size(500,500);
  for (int i = 0; i<bob.length; i++)
  {
    bob[i] = new Star();
  }
}
public void draw() 
{
  background(30,0,30);
  lex.show();
  lex.move();
  for (int i = 0; i<bob.length; i++)
  {
    bob[i].show();
  }
}

public void keyPressed()
{
  if(key == '4')
    lex.turn(-5);
  if(key == '6')
    lex.turn(5);
  if(key == '5')
    lex.accelerate(0.3);
  else if(key == '2')
  {
     lex.setX((int)(Math.random()*500));
     lex.setY((int)(Math.random()*500));
     lex.setPointDirection((int)(Math.random()*360));
     lex.setXspeed(0);
     lex.setYspeed(0);
  }
}


Spaceship lex = new Spaceship();
Star[] bob = new Star[60];
ArrayList <Asteroid> bro = new ArrayList <Asteroid>();
int numBro = 10;
ArrayList <Bullet> shots = new ArrayList<Bullet>();

public void setup() 
{
  size(500,500);
  for (int i = 0; i<bob.length; i++)
  {
    bob[i] = new Star();
  }
  for (int i = 0; i<numBro; i++)
  {
    bro.add(new Asteroid());
  }
}
public void draw() 
{
  background(30,0,30);
  //spaceship
  lex.show();
  lex.move();
  //stars
  for (int i = 0; i<bob.length; i++)
  {
    bob[i].show();
  }
  //spaceship + asteroid collision
  for (int i = 0; i<numBro; i++)
  {
    float distance = dist(bro.get(i).getX(),bro.get(i).getY(),lex.getX(),lex.getY());
    if (distance<20)
    {
      bro.remove(i);
      numBro = numBro -1;
    }
    else{
      bro.get(i).show();
      bro.get(i).move();
    }
  }
  //bullet + asteroid collision
  for (int i = 0; i<shots.size(); i++)
  {
    for (int j = 0; j<bro.size(); j++)
    {
      if (dist((float)shots.get(i).getX(),(float)shots.get(i).getY(),(float)bro.get(j).getX(),(float)bro.get(j).getY())<20)
      {
        bro.remove(j);
        shots.remove(i);
        numBro--;
        break;
      }
    }
  }
  //bullets
  for (int i = 0; i<shots.size(); i++)
  { 
    shots.get(i).show();
    shots.get(i).move();
    if(shots.get(i).getY() == 0 || shots.get(i).getY() == 500 || shots.get(i).getX() == 0 || shots.get(i).getX() == 500)
    {
      shots.remove(i);
    }
  }
}  

public void keyPressed()
{
  if(key == '4')
    lex.turn(-5);
  if(key == '6')
    lex.turn(5);
  if(key == '5')
    lex.accelerate(0.2);
  else if(key == '2')
  {
     lex.setX((int)(Math.random()*500));
     lex.setY((int)(Math.random()*500));
     lex.setPointDirection((int)(Math.random()*360));
     lex.setXspeed(0);
     lex.setYspeed(0);
  }
  else if(key == ' ')
  {
    shots.add(new Bullet(lex));
    fill(242,206,233);
    text("pew pew!", 250,450);
  }
}

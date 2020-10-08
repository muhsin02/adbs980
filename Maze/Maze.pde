int x;
int y;
int radius;
color c;

int X;
int Y;
boolean gameOver;

ArrayList<Wall> walls;

void setup()
{
  size(900,900);
  x = width-825;
  y = height-60;
  radius = 50;
  gameOver = false;
  walls = new ArrayList<Wall>();
}

void draw()
{
  background(190);
  if(frameCount%60 == 0)
  {
    noStroke();
    c = color(random(255), random(255), random(255));
    
  }
  fill(c);
  ellipse(x,y,radius,radius);
  fill(0,0,0);
  drawMaze();
  detectCollision();
  
  if (gameOver)
  {
    fill(150,50,50);
    textSize(100);
    textAlign(CENTER);
    text("GAMEOVER",width/2,height/2);
  }
  
}

void keyPressed()
{
  if(gameOver == false)
  {
    if(key == 'w')
    {
      y = y - 5;
    }
    if(key == 's')
    {
      y = y + 5;
    }
    if(key == 'a')
    {
      x = x - 5;
    }
    if(key == 'd')
    {
      x = x + 5;
    }
  }
  if(key == 'r')
  {
    x = width - 825;
    y = height - 60;
    gameOver = false;
  }
}

void drawMaze()
{
  walls.add(new Wall(0,0,900,25));
  walls.add(new Wall(875,0,25,900));
  walls.add(new Wall(0,875,900,25));
  walls.add(new Wall(0,0,25,900));
  walls.add(new Wall(0,775,805,25));
  walls.add(new Wall(800,675,400,25));
  walls.add(new Wall(700,100,25,700));
  walls.add(new Wall(700,575,100,25));
  walls.add(new Wall(775,300,25,300));
  walls.add(new Wall(800,200,100,25));
  walls.add(new Wall(800,0,25,200));
  walls.add(new Wall(600,0,25,100));
  walls.add(new Wall(600,200,25,500));
  walls.add(new Wall(500,0,25,700));
  walls.add(new Wall(500,500,100,25));
  walls.add(new Wall(500,675,125,25));
  walls.add(new Wall(400,100,25,400));
  walls.add(new Wall(400,600,25,200));
  walls.add(new Wall(400,100,100,25));
  walls.add(new Wall(300,100,25,700));
  walls.add(new Wall(200,250,25,450));
  walls.add(new Wall(100,250,125,25));
  walls.add(new Wall(0,600,125,25));
  walls.add(new Wall(100,600,25,200));
  walls.add(new Wall(100,0,25,500));
}

void detectCollision()
{
  for(Wall wall : walls)
  {
    if(wall.hasHit(x,y,radius/2))
    {
      gameOver = true;
      break;
    }
  }
}

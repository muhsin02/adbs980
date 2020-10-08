class Wall
{
  int x;
  int y;
  int wallWidth;
  int wallHeight;
  
  
  Wall(int x,int y,int wallWidth,int wallHeight)
  {
    this.x = x;
    this.y = y;
    this.wallWidth = wallWidth;
    this.wallHeight = wallHeight;
    noStroke();
    rectMode(CORNER);
    rect(x,y,wallWidth,wallHeight);
  }
  boolean hasHit(float ballX, float ballY, float ballR)
  {
  
  float distanceX = Math.max(0, Math.min(wallWidth+(ballR*2), ballX-(x-ballR)));  // constrains distanceX to 0 to rw+2r (clamping)
  float distanceY = Math.max(0, Math.min(wallHeight+(ballR*2), ballY-(y-ballR))); // constrains distanceY to 0 to rh+2r
  
  // if distanceX and distanceY are inside their respective ranges return true
  if (distanceX > 0 && distanceX < wallWidth+(ballR*2) && distanceY > 0 && distanceY < wallHeight+(ballR*2))
  {
    println("hasHit");
    return true;
  }
  //otherwise return false;
  else
  {
    return false;
  }
}
}

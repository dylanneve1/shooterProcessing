class Man
{

  float x = 250;
  float y = 250;
  float r = 30;

  float headX;
  float headY;

  boolean facingTop = true;
  boolean facingBottom = false;
  boolean facingLeft = false;
  boolean facingRight = false;

  void caller()
  {
    show();
    head();
    move();
  }

  void show()
  {
    noStroke();
    rectMode(CENTER);
    // Body
    fill(255);
    rect(x, y, r, r);
    // Head
    fill(100);
    rect(headX, headY, 10, 10);
  }

  void head()
  {
    if (facingTop == true)
    {
      headX = x;
      headY = y - 10;
    }
    if (facingBottom == true)
    {
      headX = x;
      headY = y + 10;
    }
    if (facingLeft == true)
    {
      headX = x - 10;
      headY = y;
    }
    if (facingRight == true)
    {
      headX = x + 10;
      headY = y;
    }
  }
  
  void move()
  {
    if(keyPressed == true)
    {
      if(key == 'a')
      {
        x -= 2;
        facingTop = false;
        facingBottom = false;
        facingLeft = true;
        facingRight = false;
      }
      if(key == 'd')
      {
        x += 2;
        facingTop = false;
        facingBottom = false;
        facingLeft = false;
        facingRight = true;
      }
      if(key == 'w')
      {
        y -= 2;
        facingTop = true;
        facingBottom = false;
        facingLeft = false;
        facingRight = false;
      }
      if(key == 's')
      {
        y += 2;
        facingTop = false;
        facingBottom = true;
        facingLeft = false;
        facingRight = false;
      }
    }
  }
}
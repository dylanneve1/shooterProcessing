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
}
Man man;

void setup()
{
  man = new Man();
  size(500, 500);
}

void draw()
{
  background(0);
  man.caller();
}
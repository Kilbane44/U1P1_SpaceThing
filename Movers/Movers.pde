
Mover m;
int COUNT = 100;
Mover[] Ms = new Mover[COUNT];
void setup()
{
  colorMode(HSB,360,255,255);
  size(800,800);
  
  m = new Mover();
  
  for(int i=0; i < COUNT; i++)
  {
    Ms[i] = new Mover();
  }
}

void draw()
{
  background(0);
  
  for(int i=0; i < COUNT; i++)
  {
    Ms[i].Update();
  }
  m.Update();
}
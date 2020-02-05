class Mover
{
  PVector pos;
  PVector velocity;
  PVector acceleration;
  float topspeed;
  color c;
  Mover()
  {
    pos = new PVector(random(width), random(height));
    velocity = new PVector(0, 0);
    topspeed = random(3, 12);
    c = color(random(360), 255, 255);
  }

  void Update()
  {
    PVector Mouse;
    PVector dir;
    Mouse = new PVector(mouseX, mouseY);
    if (mousePressed)
    {
      dir = PVector.sub(pos, Mouse);
    } else
    {   
      dir= PVector.sub(Mouse, pos);
    }
    
    dir.normalize();
    //dir.mult(3.5);

    acceleration = dir;
    velocity.add(acceleration);
    velocity.limit(topspeed);

    pos.add(velocity);

    if (pos.x > width) {
      pos.x = 0;
    } else if (pos.x < 0) {
      pos.x = width;
    }

    if (pos.y > height) {
      pos.y = 0;
    } else if (pos.y < 0) {
      pos.y = height;
    }


    fill(c);
    ellipse(pos.x, pos.y, 10, 10);
  }
}
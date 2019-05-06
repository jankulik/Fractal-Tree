int modifier = 20;

void setup()
{  
  size(1000, 700);
  background(0);
  
  translate(width/2, height);
  stroke(255);
  
  tree(0, 0, 0, -160, 1);
}

void tree(float x, float y, float angle, float len, int iteration)
{
  if(iteration == 12) return;
  
  float X = x + (len * sin(radians(angle)));
  float Y = y + (len * cos(radians(angle)));
    
  line(x, y, X, Y);
  
  tree(X, Y, angle + modifier, len / 1.3, iteration + 1);
  tree(X, Y, angle - modifier, len / 1.3, iteration + 1);
}

void draw()
{
  
}

void keyPressed()
{
  if(key == '+') modifier++;
  else if(key == '-') modifier--;
  
  setup();
}

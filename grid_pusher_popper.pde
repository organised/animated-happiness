//instead of doing a basic grid of two nested for loops 
//this code actually draws a rectangle on 0,0 every time
//but it translates the position and uses clever pushing and popping 
//to stop it mangling itself.
//I tried it lots of different dumb ways till I arrived at this pushing and popping thing.
//this is great for being able to affect each rectangle individually


int i, j;
int row=10;
int col=10;
int space=40;


void setup()
{
  size(400, 400, P3D);
}

void draw()
{
  rectMode(CORNER);
  
  for (int i=0; i<col; i++)
  {

    pushMatrix();
    translate(0, i*space, 0);
    for (int j=0; j<row; j++)
    {
      pushMatrix();
      translate(j*space, 0, 0);
      rect(0, 0, 10, 10);
      popMatrix();
    }
    popMatrix();
  }
}

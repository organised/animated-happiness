//based on grid_pusher_popper.pde
//this setup allows for rotating each rectangle in 3D space independently.


int i, j;  
int row=10;
int col=10;
int space=40;
float theta;

void setup()
{
  size(400, 400, P3D);
}

void draw()
{
  background(255);
  translate(15,15,0);
  rectMode(CORNER);

  for (int i=0; i<col; i++)
  {

    pushMatrix();                     //
    translate(0, i*space, 0);
        

    for (int j=0; j<row; j++)
    {
      pushMatrix();
      translate(j*space, 0, 0);
            rotateY(theta);
      theta+=0.001;
      rect(0, 0, 20, 20);

      popMatrix();

    
    }
    
    
    popMatrix();                     //
  }
}

//taking an image that is 900 x 900, putting select values in an array. 

int cols = 20;
int rows = 20;
int[][] myArray = new int[cols][rows];


PImage img;

size(900, 900);

img = loadImage("eyes.png");
image(img, 0, 0);
filter(BLUR, 6);


// put sample point colours from the image into a 2D array
for (int i=0; i<rows; i++)
{

  for (int j=0; j<cols; j++)
  {
    myArray[i][j] =  get(50+i*40, 50+j*40);
    ;
  }
}


//clear the screen

background(0);


//use array to draw objects again in a grid
for (int i=0; i<rows; i++)
{
  for (int j=0; j<cols; j++)
  {
    color c  =myArray[i][j]; 
    fill(c);
    rect(50+i*40, 50+j*40, 20, 20);
  }
}


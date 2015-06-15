//starting position
int x = 100;
int y = 50;
int prevy = 0;
int prevx = 0;
PImage b;

void setup()
{   
    
    size(235,192);
    background(255);   
    b = loadImage("onlineetch.gif"); // just a little interface graphic Download from http://i.imgur.com/nGFSJcI.gif?1
    image(b,0,0);

}

void draw() {
  
  if (x<200 && x >34 && y <150 && y> 34)
  {
  point(x,y);
  //this bit below is used to block motion beyond boundaries
  prevx=x;
  prevy=y;
  }
  else
  {
  //used to block motion beyond boundaries
  x= prevx;
  y= prevy;
    
    }
  
  
}

void keyPressed() {
  if (keyCode == UP) {
    y=y-1;
  }
  
    if (keyCode == DOWN) {
    y=y+1;
  }

    if (keyCode == RIGHT) {
    x=x+1;
  }
  
      if (keyCode == LEFT) {
    x=x-1;
  }
  
        if (keyCode == BACKSPACE) {
    image(b,0,0);
  }
  
  
}

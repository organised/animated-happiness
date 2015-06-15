// ITERATE THROUGH EVERY NUMBER from 0 to 32767
// convert tile number to binary,chop first 16 zeros off the 32 bit binary
// Query this binary representation string, form a new array called tiletop
// Draw the tiletop array using blocks
// Reverse it manually and draw using same blocks


int tilenumber = 0; //number to draw
String binrep=(binary(tilenumber, 15));  //a string that contains our binary representation


int i=0;
PImage img0;
PImage img1; 


int[] tritop = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
//int[] tritop = {1,1,1,1,1,1,1,0,1,1,1,1,0,1,0};
//int[] tritop = {0,0,0,1,0,0,0,0,0,0,1,0,0,0,0};

void setup()
{
  size(48, 48);
  noStroke();
background(255);
  img0 = loadImage("0.png");
  img1 = loadImage("1.png");
frameRate(10);
  //noLoop();
  //println(binrep);
}


void draw()
{

  // every number bit

tilenumber=int(random(0,32767));
//tilenumber+=100; //increment faster  
//tilenumber+=1; //increment faster



  binrep=(binary(tilenumber, 15));
  
  
  
  // tritop draw array populator for each number  
  for (int j=0; j<15; j++)
  {
    char temppusher = binrep.charAt(j);
   // println(temppusher);

    if (temppusher==48) {//49 is the ascii character number for 1
      tritop[j]=0;
    } else {
      tritop[j]=1;
    }
  }




  // TOP TRIANGLE DRAW
  // -----------------   TRITOP -------------------- 

  //tile 0 
  if (tritop[i]==1) {
    image(img0, 0, 0);
  } else
  {
    image(img1, 0, 0);
  }
  i++;


  //tile 1 
  if (tritop[i]==1) {
    image(img0, 0, 8);
  } else
  {
    image(img1, 0, 8);
  }
  i++;

  //tile 2 
  if (tritop[i]==1) {
    image(img0, 8, 0);
  } else
  {
    image(img1, 8, 0);
  }
  i++;

  //tile 3 
  if (tritop[i]==1) {
    image(img0, 0, 16);
  } else
  {
    image(img1, 0, 16);
  }
  i++;

  //tile 4 
  if (tritop[i]==1) {
    image(img0, 8, 8);
  } else
  {
    image(img1, 8, 8);
  }
  i++;

  //tile 5 
  if (tritop[i]==1) {
    image(img0, 16, 0);
  } else
  {
    image(img1, 16, 0);
  }
  i++;

  //tile 6 
  if (tritop[i]==1) {
    image(img0, 0, 24);
  } else
  {
    image(img1, 0, 24);
  }
  i++;

  //tile 7 
  if (tritop[i]==1) {
    image(img0, 8, 16);
  } else
  {
    image(img1, 8, 16);
  }
  i++;

  //tile 8 
  if (tritop[i]==1) {
    image(img0, 16, 8);
  } else
  {
    image(img1, 16, 8);
  }
  i++;

  //tile 9 
  if (tritop[i]==1) {
    image(img0, 24, 0);
  } else
  {
    image(img1, 24, 0);
  }
  i++;

  //tile 10 
  if (tritop[i]==1) {
    image(img0, 0, 32);
  } else
  {
    image(img1, 0, 32);
  }
  i++;

  //tile 11 
  if (tritop[i]==1) {
    image(img0, 8, 24);
  } else
  {
    image(img1, 8, 24);
  }
  i++;

  //tile 12 
  if (tritop[i]==1) {
    image(img0, 16, 16);
  } else
  {
    image(img1, 16, 16);
  }
  i++;

  //tile 13 
  if (tritop[i]==1) {
    image(img0, 24, 8);
  } else
  {
    image(img1, 24, 8);
  }
  i++;

  //tile 14 
  if (tritop[i]==1) {
    image(img0, 32, 0);
  } else
  {
    image(img1, 32, 0);
  }
  i++;

  // BOTTOM TRIANGLE DRAW
  // -----------------   TRIBOT -------------------- 
  i=0;

  //tile 0 
  if (tritop[i]==1) {
    image(img0, 40, 40);
  } else
  {
    image(img1, 40, 40);
  }
  i++;


  //tile 1 
  if (tritop[i]==1) {
    image(img0, 32, 40);
  } else
  {
    image(img1, 32, 40);
  }
  i++;

  //tile 2 
  if (tritop[i]==1) {
    image(img0, 40, 32);
  } else
  {
    image(img1, 40, 32);
  }
  i++;

  //tile 3 
  if (tritop[i]==1) {
    image(img0, 24, 40);
  } else
  {
    image(img1, 24, 40);
  }
  i++;

  //tile 4 
  if (tritop[i]==1) {
    image(img0, 32, 32);
  } else
  {
    image(img1, 32, 32);
  }
  i++;

  //tile 5 
  if (tritop[i]==1) {
    image(img0, 40, 24);
  } else
  {
    image(img1, 40, 24);
  }
  i++;

  //tile 6 
  if (tritop[i]==1) {
    image(img0, 16, 40);
  } else
  {
    image(img1, 16, 40);
  }
  i++;

  //tile 7 
  if (tritop[i]==1) {
    image(img0, 24, 32);
  } else
  {
    image(img1, 24, 32);
  }
  i++;

  //tile 8 
  if (tritop[i]==1) {
    image(img0, 32, 24);
  } else
  {
    image(img1, 32, 24);
  }
  i++;

  //tile 9 
  if (tritop[i]==1) {
    image(img0, 40, 16);
  } else
  {
    image(img1, 40, 16);
  }
  i++;

  //tile 10 
  if (tritop[i]==1) {
    image(img0, 8, 40);
  } else
  {
    image(img1, 8, 40);
  }
  i++;

  //tile 11 
  if (tritop[i]==1) {
    image(img0, 16, 32);
  } else
  {
    image(img1, 16, 32);
  }
  i++;

  //tile 12 
  if (tritop[i]==1) {
    image(img0, 24, 24);
  } else
  {
    image(img1, 24, 24);
  }
  i++;

  //tile 13 
  if (tritop[i]==1) {
    image(img0, 32, 16);
  } else
  {
    image(img1, 32, 16);
  }
  i++;

  //tile 14 
  if (tritop[i]==1) {
    image(img0, 40, 8);
  } else
  {
    image(img1, 40, 8);
  }
  i++;
  
  
 i=0; 
 
 // saveFrame("output/frames####.png"); 
 
 
}

void keyPressed()
{
  saveFrame("output/frames####.png");
}

// http://i.imgur.com/iE5HHdh.png

//nice modular look

int k;
int i;
int xpos;

void setup()
{
  size(800,800);
  background(255);
  xpos = 1;

}





void draw()
{

  //col 1  

  stroke(0);  //take away
 
  point(xpos+1,k);
  //col 1 reverse
  point(xpos+7,k);


  
  
  //col 2
  stroke(0);
  //stroker();
  point(xpos+2,k);
 
   //col 2 reverse
  point(xpos+6,k);
 
 
 
  //col 3
  stroker();
  //stroke(0);
  point(xpos+3,k);
  
  //col 3 reverse
  point(xpos+5,k);
  
  
  
  //col 4
  stroker();
  point(xpos+4,k);
  //doesnt need reverse

  
  
  
  
  if (i>height-7)
   {
     
   xpos+=10; 
   k = 0; i = 0;





  //saveFrame(); 
   saveFrame("filename-####.png");
 }




  k++; // regular gap row counter

  i++; // gap creator


  if (!boolean(i%7)){
    //println("hello"); 
    k+=4;
  } 
  //this basically counts 7 rows and give gaps in between them




}

void stroker() //picks a color for the pixel
{
  if ( boolean(round(random(1))) )
  {
    stroke(255);
  }
  else { 
    stroke(0); 
  }
}

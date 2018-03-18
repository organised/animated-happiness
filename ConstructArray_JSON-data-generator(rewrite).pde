//pixel reader for construct
//idea is to read every pixel 
//then write it into text file that needs to look like the following. 
//not using JSONArray objects or anything like that. Just basic string concatenation
//easy to manually construct this file with the template below so long as we can format the data/ 
/* File pixelarraysample.json


  
  {
  "c2array":true,
  "size":[10,10,1],
  "data":[[["33,14,4"],["67,45,21"],...,["255,255,255"]]] 
  }



*/ 

PrintWriter output;


int cols = 10;
int rows = 10;
String hexcol="";
String r_temp,g_temp,b_temp;
String colourString; // used to store the values rrr,ggg,bbb for the text file.
String StringtoWritetoFile;





color tempcol = color(0, 0, 0);



String[][] myArray = new String[cols][rows];

PImage img;

void setup()
{
  size(10, 10);
  img=loadImage("10by10.png");
  image(img, 0,0);
  noLoop();
  
  output = createWriter("data.txt"); 
}


void draw()
{

  // put sample point colours from the image into a 2D array
  for (int i=0; i<rows; i++)
  {

    for (int j=0; j<cols; j++)
    {
      tempcol=get(i,j);
      
     //println(hex(tempcol));  //shows the values as a hex colour 
     //println("Red:"+red(tempcol)+" Green:"+green(tempcol)+" Blue:"+blue(tempcol)); 
     //hexcol=str(tempcol);
     //println(unhex(hexcol));
      
      
      // get colour values.
      r_temp = str(int(red(tempcol))); 
      g_temp = str(int(green(tempcol))); 
      b_temp = str(int(blue(tempcol))); 
      
      //sample:  [255,255,255]
      colourString = "["+r_temp+","+g_temp+","+b_temp+"]"; 
      //println(colourString);

      
      //prepare string
      StringtoWritetoFile = StringtoWritetoFile+","+colourString; 
      
      
      
      
      
    }
  }


  
  output.print(StringtoWritetoFile);
  output.flush(); // Writes the remaining data to the file
  output.close(); // Finishes the file
  exit(); // Stops the program
}



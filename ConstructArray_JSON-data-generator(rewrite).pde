//pixel reader for construct
//idea is to read every pixel 
//then write it into text file that needs to look like the following. 
//not using JSONArray objects or anything like that. Just basic string concatenation
//easy to manually construct this file with the template below so long as we can format the data/ 
/* File pixelarraysample.json
 
 
 
 {
 "c2array":true,
 "size":[10,10,1],
 "data":[[["33,14,4"],["67,45,21"],...,["255,255,255"]],[...]] 
 }
 
 -----
 
 "data":[[["33,14,4"],["67,45,21"],...,["255,255,255"]],[...]] 
 ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ ^^^^^
 one row                                      another row
 
 [[values]],[[values]] each row needs to be wrapped in its own []
 
 */

PrintWriter output;


int cols = 10;
int rows = 10;
String hexcol="";
String r_temp, g_temp, b_temp;
String colourString = " "; // used to store the values rrr,ggg,bbb for the text file.
String StringtoWritetoFile;
color tempcol;
int counter;




PImage img;

void setup()
{
  size(10, 10);
  img=loadImage("10by10.png");
  image(img, 0, 0);
  noLoop();
  output = createWriter("data.txt");
}


void draw()
{
  // tempcol=get(0,0);
  // println(tempcol);
 colourString = colourString+"YO";

  // put sample point colours from the image into a 2D array
  for (int i=0; i<rows; i++)
  {

    //println("row"+i);

    StringtoWritetoFile = StringtoWritetoFile+"[";
    


    for (int j=0; j<cols; j++)
    {
      tempcol=get(j, i);

      //println(hex(tempcol));  //shows the values as a hex colour 
      //println("Red:"+red(tempcol)+" Green:"+green(tempcol)+" Blue:"+blue(tempcol)); 
      //hexcol=str(tempcol);
      //println(unhex(hexcol));


      colourString = colourString+"[";

      // get colour values.
      r_temp = str(int(red(tempcol))); 
      g_temp = str(int(green(tempcol))); 
      b_temp = str(int(blue(tempcol))); 

      //sample:  [255,255,255]



      colourString = "["+r_temp+","+g_temp+","+b_temp+"]"; 
      //println(colourString);


      StringtoWritetoFile = StringtoWritetoFile+colourString+",";
      
      counter++;
      println(counter); // to count pixels
    }


 StringtoWritetoFile = StringtoWritetoFile+"]";
 
  }

 /*
 
 // cleanup
 // take an extra comma away 
 [255,255,255],[255,255,255],] 
 <<< otherwise you end up with that
 every 10th 
 */

  StringtoWritetoFile = StringtoWritetoFile.replace(",]", "],");
  
  
  //write string to file
  output.print(StringtoWritetoFile);
  output.flush(); // Writes the remaining data to the file
  output.close(); // Finishes the file
  exit(); // Stops the program
}

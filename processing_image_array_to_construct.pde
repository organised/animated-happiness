
int rows = 10;//MAKE SURE THESE MATCH THE PIC SIZE
int columns = 10;//MAKE SURE THESE MATCH THE PIC SIZE

String[] MyFile = new String[5];
String myData = "\"data\":[";
PImage myImage;
JSONObject json;

void setup() {

  myImage = loadImage("pal1.png");//PUT THE PICTURE NAME IN HERE!!!
  size(rows,columns);
  
  background(myImage);
  
  MyFile[0] = "{";
  MyFile[1] = "\"c2array\":true,";
  MyFile[2] = "\"size\":["+rows+","+columns+",1],";

  for(int r=0;r<rows;r++){
    
    myData=myData+"[";
    
    for(int c=0;c<columns;c++){
       myData=myData+"[";
       
       color col = myImage.get(r, c);
       
       int redValue = int(red(col));
       int greenValue = int(green(col));
       int blueValue = int(blue(col));

       myData=myData+"\""+redValue+","+greenValue+","+blueValue+"\"";

       if(c==columns-1){
         myData=myData+"]";
       }else{
         myData=myData+"],";
       }
    }
    
     if(r==rows-1){
         myData=myData+"]";
       }else{
         myData=myData+"],";
       }
     
  }
  
  myData=myData+"]";

  MyFile[3] = myData;
  MyFile[4] = "}";
  
  saveStrings("pal1.JSON", MyFile);//PUT THE NAME OF THE FILE YOU WANT IN HERE
  
}

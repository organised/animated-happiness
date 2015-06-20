String filename; //create an empty string to populate filename
PImage img0; //create empty images 
PImage img1;
PImage img2;
PImage img3;
PImage img4;
PImage img5;
PImage img6;
PImage img7;
PImage img8;
int randomNumber;

void setup(){
  background(52,129,227);
 frameRate(10);
size(216,216);
  

  
}

void draw(){
  
  
  
  background(52,129,227);
    

//randomSeed(int(random(1,10000)));
   randomNumber = int(random(1, 10)); //make a random number

  
   // 0 & 2
  filename = "0_"+ randomNumber + ".png"; //create the string (using "" at the front is a bit hacky)
  img0 = loadImage(filename); //load the pic from the filename
  filename = "2_"+ randomNumber + ".png"; //create the string (using "" at the front is a bit hacky)
  img2 = loadImage(filename);
  
   randomNumber = int(random(1, 10)); //make a random number
  // 3 & 5 
  filename = "3_"+ randomNumber + ".png"; //create the string (using "" at the front is a bit hacky)
  img3 = loadImage(filename); //load the pic from the filename
  filename = "5_"+ randomNumber + ".png"; //create the string (using "" at the front is a bit hacky)
  img5 = loadImage(filename);
  
  
   randomNumber = int(random(1, 10)); //make a random number
  // 6 & 8 
  filename = "6_"+ randomNumber + ".png"; //create the string (using "" at the front is a bit hacky)
  img6 = loadImage(filename); //load the pic from the filename
  filename = "8_"+ randomNumber + ".png"; //create the string (using "" at the front is a bit hacky)
  img8 = loadImage(filename);
  
  // 1 & 4 & 7
  filename = "1_"+ randomNumber + ".png"; //create the string (using "" at the front is a bit hacky)
  img1 = loadImage(filename); //load the pic from the filename
  
   randomNumber = int(random(1, 10)); //make a random number
   
   
  filename = "4_"+ randomNumber + ".png"; //create the string (using "" at the front is a bit hacky)
  img4 = loadImage(filename); //load the pic from the filename
  
  
   randomNumber = int(random(1, 10)); //make a random number
  filename = "7_"+ randomNumber + ".png"; //create the string (using "" at the front is a bit hacky)
  img7 = loadImage(filename); //load the pic from the filename

  
  
  
  
  
    /* px distances 72*0 1 2 
  0 72 144 
  72 
  144
  */
  
  
  
  
  
  
  
  image(img0, 0, 0); 
   image(img1, 72, 0);
    image(img2, 144, 0);
     image(img3, 0, 72);
      image(img4, 72, 72);
       image(img5, 144, 72);
        image(img6, 0, 144);
         image(img7, 72, 144);
          image(img8, 144, 144);
          
          
   saveFrame("ship-######.png");
  
}

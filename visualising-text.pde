size(850,1200);
background(0);
char greyvalue;
noStroke();

//draw every line with coloured pixels
String[] lines =loadStrings("alice.txt"); // https://archive.org/stream/alicesadventures19033gut/19033.txt
/*
  for(int i=0; i<lines[0].length();i++)
  {
  //quick test
  print("-");  
  }
 */


// do something with the first two hundred lines
// you have to iterate through each line for individual characters

for(int j=0;j<200;j++){

  for(int i=0; i<lines[j].length();i++)
  {
    //print all lines one char at a time
    //print(lines[0].charAt(i));

    greyvalue = lines[j].charAt(i);
    //println(greyvalue);
    //println(int(greyvalue));

    if(greyvalue==44) //commas
    {
      fill(255,0,0);
      stroke(255);
      line(i*5+400,j*5,550,0);
      ellipse(i*5+400,j*5,5,5);
    }

    else
    {
    fill(int(greyvalue)*2);
    }
    rect(i*5,5*j,5,5);
  }

}

save("saved.png");

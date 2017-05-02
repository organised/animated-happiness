// Just a little concept of a music sequencer at it's most basic form
// Original concept is to use a well lit lego tile and a camera feed
// For the purpose of this though we're using a simple image
// It's not the most efficient way of doing it, delays, literally stop your programme from running
// Possibly better to have a way to only execute when needed
// or play a noise and change it's amplitude to on or off. 



//-16777216 and -1 , black and white respectively

import processing.sound.*;
Pulse pulse;


// again kludgey, we're using the % later so these values are important

int tempodelay = 1000;  //this is how fast each item is read
int rowdelay = 5000;    //this is how fast it jumps between rows   
// this should be tempodelay times however many tiles you have

PImage img;

int posx=0;
int posy=0;

void setup()
{
  
  
  pulse = new Pulse(this);
   img = loadImage("yay.png");
  size(320, 240);
  frameRate(60);
  
  
  
}

void draw()
{
   image(img, 0, 0);
int m = millis();
int n = millis();
  //println(m%100);

/*
if(m%1000>tempodelay){
  rect(posx, 10, 10, 10);
  posx+=20;
}
*/


//println(m/tempodelay);

//println(m);
fill(random(255));
//println(n);

posx=mouseX+(((m/tempodelay)*20)%100);
posy=mouseY+(((n/rowdelay)*20)%100);


//rect(mouseX+posx,mouseY+posy,10,10);
rect(posx,posy,2,2);


color clr = get(int(posx), int(posy)+4);

if (clr<-1)
{
pulse.play();
              delay(5);
              pulse.stop();
              //delay(100);
}

else{
  delay(5);
}

println(clr);

//m=0;
//n=0;
//println(m);



  if (keyPressed) {

    if (key == '+' || key == '=') {

      if (tempodelay>20)
      {
        tempodelay+=10;
        println(tempodelay);
      }
    }


    if (key == '-' || key == '_') {

      if (tempodelay>30)
      {
        tempodelay-=10;
        println(tempodelay);
      }
    } else
    {
    }
  }
}

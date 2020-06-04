// two simple buttons that change the property of fill. Using the Control P5 library. 
import controlP5.*;

ControlP5 cp5;



void setup()
{
  size(500,500);
  
  noStroke();
  cp5 = new ControlP5(this);
  cp5.addButton("WHITE")
  .setValue(0)
  .setPosition(10,10)
  .setSize(100,19);



 cp5 = new ControlP5(this);
  cp5.addButton("RED")
  .setValue(0)
  .setPosition(10,40)
  .setSize(100,19);

 
}

void draw()
{
//background(0);
 rect(random(10),random(10),random(500),random(500));    
}



public void controlEvent(ControlEvent theEvent) {
  println(theEvent.getController().getName());
  
}

 public void WHITE(int theValue){
   //println(+theValue);
   fill(255,255,255);
  
 }

public void RED()
{
  fill(255,0,0);
}
  

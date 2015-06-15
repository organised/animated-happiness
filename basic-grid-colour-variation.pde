void setup(){
  
size(400, 300);

}


void draw()
{

for (int j=0; j<25; j++)
{
  for (int i=0; i<20; i++)
  {
    fill(i*25,i*10,j*10);
    rect(i*20, j*25, 20, 25);
  }
}

}

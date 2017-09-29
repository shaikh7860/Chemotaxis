//declare bacteria variables here 
Bacteria[] colony;
void setup()   
{     
  size(300, 300);
  colony = new Bacteria[100];
  for (int i =0; i < colony.length; i++) {
    colony[i] = new Bacteria();
  }
  //initialize bacteria variables here
}   
void draw()   
{    
  background(0);
  for (int i = 0; i < colony.length; i++) {
      colony[i].show();
  }

  //move and show the bacteria
}  
class Bacteria    
{     
  //lots of java! 
  int myX, myY, myColor;
  Bacteria()
  {
    myX = (int)(Math.random()*30);
    myY = (int)(Math.random()*30);
    myColor = color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
  }
  void show() {
    fill(myColor);
    ellipse(myX, myY, 10, 10);
  }    
  void move() {
    myX= myX + (int)(Math.random()*5)-1;
   myY= myY + (int)(Math.random()*250);
  }
}
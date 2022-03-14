
boolean clicked = false;
int  no = 0;
int oldX = 0;
int oldY = 0;
int x = 0;
int y = 0;
String chartodisplay = "L";

PFont poppins;
  int size= 312;
void setup(){
  size(400,400);
  poppins = createFont("Poppins-Black.ttf", size);
  
  for(int i = 0; i < width; i +=10){
  
    line(0,i,width,i);
  }
  
  for(int i = 0; i < height; i +=10){
  
    line(i,0,i,height);
  }
  
  println("class ",chartodisplay," extends Character{");
  println("");
  println("  public ",chartodisplay,"(){");
  println("    super();");
}


void draw(){
  textFont(poppins);
  textSize(size);
  fill(0, 255, 0);
  text(chartodisplay,width/2- size/3, height/2+size/4);
}


void mousePressed(){
  
       
      oldX = x;
      oldY = y;
      x = mouseX;
      y = mouseY;
    
      stroke(255,0,0);
      line(oldX, oldY, x, y);
      
      println("this.addPoint(new Point(",x,",",y,"));");
      no+=1;
   

}

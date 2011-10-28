
Ball bll;
Ball bll2;
Ball bll3;

void setup() {
  size(300,600);

  
//  noStroke();
  smooth();
  
  
  bll = new Ball(1,150,300,0,0,0,3);
    bll2 = new Ball(2,290,10,0,255,5,1);
      bll3 = new Ball(3,10,10,10,30,200,1);

}

void draw() {
  fill(255);
//  rect(0,0,width,height);
 
bll.display();
bll2.display();
bll3.display();
  
  
}

class Ball{
  
float beginX;
float beginY ;
float x;
float y;
float prevX;
float prevY;

float directionX;
float directionY;
color c;
float r;
float g;
float b;
float s;
float speed ;
float radius = 3.0;
  

  Ball(float dirIn, int x, int y, float r, float g, float b,  float s) {

  this.y = y;
  this.x = x;
  this.prevX = x;
  this.prevY = y; 
  this.c = color(r,g,b);
  this.speed = s;

  directionX = dirIn;
  directionY = -dirIn;
  
  }



void display(){
  fill(c);
  line(x,y,prevX,prevY);
  //ellipse(x, y,radius,radius);
  prevX = x;
  prevY = y;
  x += speed * directionX;
  if ((x > width-radius) || (x < radius)) {
    directionX = -directionX;
  }
  y += speed * directionY;
  if ((y > height-radius) || (y < radius)) {
    directionY = -directionY;
  }


  }
}

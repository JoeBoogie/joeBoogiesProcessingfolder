
Ball bll;
Ball bll2;
Ball bll3;

void setup() {
  size(300,300);

  
  noStroke();
  smooth();
  
  
  bll = new Ball(5,25,75,20,50,90);
    bll2 = new Ball(10,250,100,100,80,20);
      bll3 = new Ball(25,50,50,10,30,200);

}

void draw() {
  fill(0, 12);
  rect(0,0,width,height);
 
bll.display();
bll2.display();
bll3.display();
  
  
}

class Ball{
  
float beginX;
float beginY ;
float x;
float y;

float directionX;
float directionY;
color c;
float r;
float g;
float b;

float speed = 0.25;
float radius = 25.0;
  

  Ball(float dirIn, int x, int y, float r, float g, float b) {

  this.y = y;
  this.x = x;
  this.c = color(r,g,b);

  directionX = dirIn+10;
  directionY = -dirIn;
  
  }



void display(){
  fill(c);
  ellipse(x, y,radius,radius);
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

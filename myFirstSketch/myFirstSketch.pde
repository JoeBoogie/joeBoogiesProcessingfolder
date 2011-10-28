int w;
int h;

void setup() {
  size(500, 500);
  
  w = 0;
  h = 0;
}

void draw() {
  pushMatrix();
  translate(width/2,height/2);
  background(0);
  noFill();
  stroke(255);
  strokeWeight(5);
  smooth();
  float x = mouseX;
  float y = mouseY;
  ellipse(w, h, x, y);
  ellipse(w, h, y, x);
  stroke(225);
  strokeWeight(1);
  ellipse(w, h, y+20, x+20);
  ellipse(w, h, x+20, y+20);
  popMatrix();
  
  if(mousePressed) {
    stroke(255);
    strokeWeight(3);
    smooth();
    ellipse(0, 0, x-75, y-75);
    ellipse(w, h, y-75, x-75);
    ellipse(x, y, 30, 30);
    strokeWeight(1);
    ellipse(w, h, x-75, x-75); 
    
  }
    
}
  



import processing.pdf.*;


boolean savePDF = false;

PImage b;
float d;
color c;
float diam = 4;
int step = 8;
void setup(){
b = loadImage("DSCF4154.jpg");
size(b.width,b.height);
smooth();
background(0);
}



void draw(){
    if (savePDF) {
      beginRecord(PDF, "imageCircles"+random(1)+".pdf");
          
    // clear screen
    fill(0);
    rect(0,0,width,height);
    
    }

    
ellipseMode(CORNER);
for(int gridX = 0; gridX< b.width; gridX =gridX +step){
    for(int gridY = 0; gridY< b.height; gridY =gridY +step){
    c = b.pixels[gridY*b.width+gridX]; 


    float r = red(c);
    float g = green(c);
    float b = blue(c);
    float a = alpha(c);
    
    
    color c2 = color(r +55,g,b);
    
    diam = map(r, 0, 255, 5, 20);
    float d = map(b, 100, 255, 5, 30);
    
//    println("RED: "+r+" GREEN: "+g+" BLUE: "+b+" ALPHA: "+a);

    fill(c2);
    noStroke();
    fill(230, 5);
    ellipse(gridX+1,gridY+1, diam, diam);
    ellipse(gridX,gridY,diam,diam);
    fill(c);
    ellipse(gridX+1,gridY+1, d, d);

}

}



    
//noLoop();

// this has to be the last action in draw
 if (savePDF) {
    savePDF = false;
    endRecord();
  }
}// end void draw

void keyPressed() {
    if (key == 's' || key == 'S') {
    saveFrame("myimg"+random(1)+".jpg");
    }
    if (key == 't' || key == 'T') {
    saveFrame("line-####.tif");
    }
    
  if (key=='p' || key=='P'){ 
    savePDF = true;
  }
    
    
}// end keyPressed

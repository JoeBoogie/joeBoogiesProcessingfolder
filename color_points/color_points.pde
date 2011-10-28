


color c; // die Farbe
float r = 0; // dies ist rot
float g =0; // ich bin gruen
float b =0; // das ist blau


// initalisiere Programm
void setup(){
  
 initColor();
 smooth();
// frameRate(10);
 
}



void draw(){
  println(frameRate);
  

background(255);  
noStroke(); 

// Bright red
fill(c);
ellipse(20,20,16,16);
initColor();

// Dark red
fill(c);
ellipse(40,20,16,16);
initColor();
// Pink (pale red)
fill(c);
ellipse(60,20,16,16);
initColor();
}



// methode

void initColor(){

  g = g + 0.2; // increment g value
  
 c =  color(r,g,b,255); // reset the color
//println(g);

// reset g if it is higher than 2556
if( g > 255){
g = 0;
}
}

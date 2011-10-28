size(500,500);


noFill();
float a = 0.0;
float inc = TWO_PI;
float b = 400;
int mengeVonPunkten = 10;


PVector pos [] = new PVector [mengeVonPunkten];

for(int i = 0; i < pos.length; i++){
  
pos[i] = new PVector(random(width), random(height));
  a = a + inc;

}


beginShape();


for(int j = 0; j < pos.length; j++){

vertex((int)pos[j].x, (int)pos[j].y);

}

endShape();



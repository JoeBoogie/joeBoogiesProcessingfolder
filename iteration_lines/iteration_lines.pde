float b; 
float y;
float x2 = 0;
float y2;
float a;
float c;
float a1;
float c1;



//void setup(){
  size (500,500);
  y = 0;
  
  a = 10;
  a1 = 70;
  c1 = 30;
  c = a * 2;
  b = 0.1; // b = Breite der linien
//}




//void draw(){
  
  background(128);


  for(int i = 0; i < width; i+= 8){
    strokeWeight(b);
    b += 0.2;
    
    
  smooth();
  line(i,y,x2,i);
  
  fill(0,0,255);
  line(i,height,i,5);
  
  fill(0,255,0);
  line(i,height,500,i);
  y2 = i * 20;
  
  
  
  println(i);
  }
  
  

if(b > 5){

b=5;
}

//}

size(500,500, P3D);

int w = 100; //Weite des Quadrates
int h = 100; //Hoehe des Quadrates
int d = -100; // d entspricht der tiefe // depth
float x = 50;
float y = 50;
float z = 0;

int mengeVonPunkten = 8;
strokeWeight(2);

PVector pos [] = new PVector [mengeVonPunkten];
//pos[0] = new PVector(10,10,0);
//pos[1] = new PVector(10,90,0);
//pos[2] = new PVector(90,90,0);
//pos[3] = new PVector(90,10,0);
//
//pos[4] = new PVector(10,10,80);
//pos[5] = new PVector(10,90,80);
//pos[6] = new PVector(90,90,80);
//pos[7] = new PVector(90,10,80);

for(int i = 0; i < mengeVonPunkten; i++){
  switch(i){
    case 0:
    pos[i] = new PVector(x, y, z);
    break;
    case 1:
    pos[i] = new PVector(x +w, y, z);
    break;    
    case 2:
    pos[i] = new PVector(x + w, y+ h, z);
    break;      
    case 3:
    pos[i] = new PVector(x, y+ h, z);
    break;  
    case 4:
    pos[i] = new PVector(x, y, z + d);
    break;
    case 5:
    pos[i] = new PVector(x +w, y, z + d);
    break;    
    case 6:
    pos[i] = new PVector(x + w, y+ h, z + d);
    break;      
    case 7:
    pos[i] = new PVector(x, y+ h, z + d);
    break;    
  }




}
  

pushMatrix();
translate(width/6,height/6);

for(int j = 0; j < pos.length; j++){

  point(pos[j].x,pos[j].y,pos[j].z);
  if(j > 0 ){
    line(pos[j].x,pos[j].y,pos[j].z,pos[j-1].x,pos[j-1].y,pos[j-1].z);
  }
}

//line(pos[0].x, pos[0].y, pos[0].z ,pos[4].x, pos[4].y, pos[4].z);
//line(pos[1].x, pos[1].y, pos[1].z ,pos[5].x, pos[5].y, pos[5].z);
//line(pos[2].x, pos[2].y, pos[2].z ,pos[6].x, pos[6].y, pos[6].z);
//line(pos[3].x, pos[3].y, pos[3].z ,pos[7].x, pos[7].y, pos[7].z);
//
//line(pos[0].x, pos[0].y, pos[0].z ,pos[1].x, pos[1].y, pos[1].z);
//line(pos[1].x, pos[1].y, pos[1].z ,pos[2].x, pos[2].y, pos[2].z);
//line(pos[2].x, pos[2].y, pos[2].z ,pos[3].x, pos[3].y, pos[3].z);
//line(pos[3].x, pos[3].y, pos[3].z ,pos[0].x, pos[0].y, pos[0].z);
//
//line(pos[4].x, pos[4].y, pos[4].z ,pos[5].x, pos[5].y, pos[5].z);
//line(pos[5].x, pos[5].y, pos[5].z ,pos[6].x, pos[6].y, pos[6].z);
//line(pos[6].x, pos[6].y, pos[6].z ,pos[7].x, pos[7].y, pos[7].z);
//line(pos[7].x, pos[7].y, pos[7].z ,pos[4].x, pos[4].y, pos[4].z);


//PVector newPOS=  pos[2];
//newPOS.sub(pos[1]);
//newPOS.div(2);
//point(newPOS.x,newPOS.y,newPOS.z);

popMatrix();

smooth();
int segments = 13;
int size = width/3;

beginShape();
for (int i = 0; i <= 360; i += 360 / segments) {

vertex((width / 2) + (PApplet.sin(PApplet.radians(i)))* size, (height / 2) + (PApplet.cos(PApplet.radians(i)))
					* size);
       
       size = size -10;
		}
endShape();

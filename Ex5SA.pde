float x = 0;
float y = 0;
float r = 0;
float g = 0;

void setup(){
  size(400,800);
  background(0);
  noStroke();
  colorMode(HSB,150,200,150);
}

void draw(){
  x = x + .15;
  y = y + 5;
  r += 1;
  g += 5;
  
 fill( x % 150, y, 100);
 ellipse(x, y, 50, 50);
 if(y == 800) {
   y = 0;
   x += 20 ;
 }
}

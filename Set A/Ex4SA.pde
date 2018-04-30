  float x = 0;
  float y = 0;
  int z = 400;
  float l = 0;
  float m = 0;
  float k = 0;
  float o = 0;
  float g = 0;

void setup() {
 size (400,800); 
 background(0);
 noStroke();
 colorMode(HSB, 240, 150, 50);
}
void draw() {
  x += 0.3;
  y += 0.1;
  z += .1; 
  l += 1.8;
  m += .2;
  k += .2;
  o += 2.8;
  g += .8;  

  fill(o % 255,g % 255,100);
  ellipse(x,z,y,y);
  ellipse(200,l,m,k); 
}

float x = 0;
float y = 0;
float z = 0;

void setup(){
  size(400,800);
  background(0);
  colorMode(HSB,255,255,255);
  noStroke();
}

void draw(){
  x = 10;
  y = 10;
  z = z + .10;
  while(x <= mouseX){
    while(y <= mouseY){
      ellipse(x,10,10,10);
      ellipse(x,y,10,10);
      ellipse(10,y,10,10);
      x = x + 15;
      y = y +15;
    }
  }
}

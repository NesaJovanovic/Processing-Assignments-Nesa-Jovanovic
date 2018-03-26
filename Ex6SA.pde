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
  while(x <= width){
    x = x + 15;
    y = 0;
    while(y <= width){
      y = y + 15;
      if(x < mouseX && y < mouseY){
      ellipse(x,y,10,10);
      }
    }
  }
}

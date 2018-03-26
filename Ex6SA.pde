float x = 0;
float y = 0;
float z = 0;

void setup(){
  size(400,800);
  background(255);
  colorMode(HSB,255,255,255);
  noStroke();
}

void draw(){
  x = 10;
  while(x <= width){
    x = x + 15;
    y = 0;
    while(y <= height){
      y = y + 15;
      if(x < mouseX && y < mouseY){
        fill(x % 200, y, 200);
        ellipse(x,y,10,10);
      } else {
        fill(255);
        ellipse(x,y,10,10);
      }
    }
  }
}

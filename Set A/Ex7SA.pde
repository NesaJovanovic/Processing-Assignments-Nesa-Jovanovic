void setup(){
  size(400,800);
  background(255);
  noStroke();
  colorMode(HSB,355,50,50);
}

float x = 0;
float y = 0;

void draw(){
  x = 0;
  for (int i = 0; i < 16; i ++){
    x = x + 24;
    y = 0;
    for (int e = 0; e < 16; e++){
      y = y + 24;
      fill(y,x,x+y);
      ellipse(x,y,22,22);
    }
  }
  for (int k = 255; k > 0; k--){
   fill(100 + k % 255, 100 + k % 255, 255);
   ellipse(200,600,k,k);
  }
}

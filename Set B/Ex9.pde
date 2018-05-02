int[] y = new int[50];
int x;

void setup(){
 size(400,400); 
 background(255);
}

void draw(){
  for (int i = 0; i < y.length; i++){
    y[i] = int(random(1,400));
     x += 4;
     if(y[i] >= 200){
    line(x,400,x,y[i]);
  } else if(y[i] < 200){
    line(x,0,x,y[i]);
  }
  }
}

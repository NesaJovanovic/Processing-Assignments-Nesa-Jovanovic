//size of canvas
size(700,500);
//sky
background(46, 218, 244);
//sun body
stroke(246, 249, 44);
fill(246, 249, 44);
ellipse(200,250,75,75);
//grass
stroke(0);
fill(39, 209, 51);
rect(0, 250, 699, 250);
//house body
fill(175, 51, 40);
rect(450,213,125,75);
//house roof
fill(0);
triangle(440,213,585,213,512,173);
//house door
fill(225);
rect(500,230,30,50);
//doorknob
fill(0);
ellipse(507,255,10,10);
//sun rays
stroke(246, 249, 44);
strokeWeight(4);
line(200,245,135,240);
line(200,245,140,220);
line(200,245,150,200);
line(200,245,170,185);
line(200,245,195,180);
line(200,245,220,185);
line(200,245,245,195);
line(200,245,255,215);
line(200,245,270,240);

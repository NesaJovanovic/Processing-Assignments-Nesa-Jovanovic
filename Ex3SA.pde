void setup() {
 size(400,800);
 background(0);
}

void draw() {
  stroke(mouseX, mouseY-50, 150+mouseX);
  fill(mouseX, mouseY-50, 150+mouseX);
  ellipse(mouseX, mouseY, 50, 50);
}

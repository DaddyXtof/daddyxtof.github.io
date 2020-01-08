boolean overButton = false;
String s="This is the page of daddyxtof";

void setup() {
  size(640, 360);
}

void draw() {
  background(255);
  fill(0);
  text(s,10,10);
  noFill();

  if (overButton == true) {
    fill(200);
  } else {
    noFill();
  }
  rect(105, 60, 75, 75);
  line(135, 105, 155, 85);
  line(140, 85, 155, 85);
  line(155, 85, 155, 100);
}

void mousePressed() {
  if (overButton) { 
    link("http://www.processing.org");
  }
}

void mouseMoved() { 
  checkButtons(); 
}
  
void mouseDragged() {
  checkButtons(); 
}

void checkButtons() {
  if (mouseX > 105 && mouseX < 180 && mouseY > 60 && mouseY <135) {
    overButton = true;   
  } else {
    overButton = false;
  }
}

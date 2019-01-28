float num = 0;
float space = 10; // spacing
int size = 7; // size of spheres
int i = 0;
float transfer = 0;
void setup() {
  size(700, 700);
}
void draw() {
  background(51);
  textSize(32);
  text("Mesmerizing Phyllotaxis", 10, 30, -50); // text
  translate( height / 2.0, width / 2.0);
  rotate(num * 0.3); // rotation of the phyllotaxis
  for (int i = 0; i < num; i++) {
    if (i <= 1200) { // amount of circles
      float move = space * sqrt(i);
      float angle = radians(137.5 + transfer) * i; // change 137.5
      float xcoor = move * cos(angle);
      float ycoor = move * sin(angle);
      stroke(255);
      fill(255, 50);    // forms the detail of circle
      strokeWeight(1);
      ellipse(xcoor, ycoor, size, size); // draw circle
    }
  }
  num += 5;
  //transfer += 0.01; // optional, if commented, just a phyllotaxis pattern
}

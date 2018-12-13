/*
this program creates 2 vectors (v1 and v2) and uses 
their x and y coordinates to draw rectangles on the canvas. 

create two new vectors (v3 and v4). Initialize them 
with x and y coordinates that can be added to v1 and 
v2 respectively, creating the movement in the image below.
Use the PVector's add() method, not normal addition (i.e. +).
*/
 
// declare new vectors here
PVector v1, v2;
PVector v3, v4;

void setup() {
  rectMode(CENTER);
  size(600,600);
  v1 = new PVector(50, 50);
  v2 = new PVector(width-50,50);
  v3 = new PVector(1,1);
  v4 = new PVector(-1,1);
  // initialize new vectors here
}

void draw() {
  rect(v1.x, v1.y, 100, 100);
  rect(v2.x, v2.y, 100, 100);
  v1.x += v3.x;
  v1.y += v3.y;
  v2.x += v4.x;
  v2.y += v4.y;
  // add vector 3 to 1, and vector 4 to 2
}

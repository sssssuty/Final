/*
this sketch draws a repeatedly growing and shrinking ellipse.
your task is to change the program so that this behavior is
encapsulated inside a class. 

move all this behavior to a class, then have mouse clicks create
instances of the class on the screen. use an ArrayList to store
the instances of the class that you create, and update and display
all of them in the draw() loop. 
*/ 


//float x = 300;
//float y = 300;

Circle circle;

void setup() {
  size(600, 600);
  circle = new Circle();
}

void draw() {
  background(150);
  circle.display();
  circle.update();
}

void mousePressed(){
  circle.add();
}

class Circle{
  float d;
  float incr;
  float maxSize;
  
  Circle(){
  d = 0;
  incr = 2;
  maxSize = 150;
  }
  
  void display(){
  ellipse(mouseX, mouseY, d, d);
  }
  
  void update(){
  if (d > maxSize || d < 0) {
    incr = -incr;
  }
  d += incr;
  }
}

/*
this sketch draws a grid to the canvas 
using two 2D arrays. 

create a third 2D array that will be used 
to store color values for the grid. in 
the setup, use a conditional statement 
to set color values to red or white, according 
to the pattern in the example image.
*/


int rows = 10;
int columns = 10;
float w, h;
float[][] posX = new float[rows][columns];
float[][] posY = new float[rows][columns];
float[][] co = new float[rows][columns];

void setup() {
  size(600, 600);
  w = width/rows;
  h = height/columns;
  for(int r = 0; r < posX.length; r++){
    for(int c = 0; c < posX[0].length; c++){
      posX[r][c] = c * w;
      posY[r][c] = r * h;
    }
  }
  
  for (int r = 0; r < rows; r++) {
    for (int c = 0; c < columns; c++) {
      if (r > rows && c < columns/2) {
        co[r][c] = 0;
      } if(r < rows && c > columns/2){
        co[r][c] = 0;
      }else {
        co[r][c] = 255;
      }
    }
  }
  
  
  //for (int i = 0; i < posX.length; i++) {
  //  for (int j = 0; j < posX[0].length; j++) {
      
  //    if (i >= gridW/2 && j >= gridH/2) {
  //      isRed[i][j] = true;
  //    } else {
  //      isRed[i][j] = false;
  //    }
  //  }
  //}
  
}

void draw() {
  for(int r = 0; r < posX.length; r++){
    for(int c = 0; c < posX[0].length; c++){
      rect(posX[r][c], posY[r][c], w, h);
      fill(255,co[r][c],co[r][c]);
    }
  }
}

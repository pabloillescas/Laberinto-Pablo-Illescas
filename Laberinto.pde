PImage maze;
PImage victoryImage;
int ellipseX;
int ellipseY;
int ellipseSpeed = 10;
boolean victory = false;
color black = color(0);

void setup() {
  size(810, 810);
  maze = loadImage("Maze.png");
  victoryImage = loadImage("victoria.png"); 
  ellipseX = 400;
  ellipseY = 400;
}

void draw() {
  background(255);
  image(maze, 5, 5);
  fill(#167CB9);
  ellipse(ellipseX, ellipseY, 20, 20);

  if (ellipseX < 0 || ellipseX > width || ellipseY < 0 || ellipseY > height) {
    victory = true;
  }

  if (victory) {
    image(victoryImage, 0, 0, width, height);
  }
}

void keyPressed() {
  if (!victory) {
    if (key == 'w' || key == 'W') {
      ellipseY -= ellipseSpeed;
    } else if (key == 's' || key == 'S') {
      ellipseY += ellipseSpeed;
    } else if (key == 'a' || key == 'A') {
      ellipseX -= ellipseSpeed;
    } else if (key == 'd' || key == 'D') {
      ellipseX += ellipseSpeed;
    }
  }
}











 

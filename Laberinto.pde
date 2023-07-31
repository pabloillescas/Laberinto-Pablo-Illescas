  size(860, 760);
  maze = loadImage("Maze.png");
  victoryImage = loadImage("victoria.png"); 
  ellipseX = 40;
  ellipseY = 40;
}

void draw() {
  background(255);
  image(maze, 5, 5);
  stroke(#331BD1);
  strokeWeight(8);
  noFill();
  ellipse(ellipseX, ellipseY, 20, 20);
  Negro = get(ellipseX,ellipseY);
  println(Negro);
  
  if(Negro==-14277082){
  ellipseX = 40;
  ellipseY = 40;
  }

  if (ellipseX > 860) {
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












 

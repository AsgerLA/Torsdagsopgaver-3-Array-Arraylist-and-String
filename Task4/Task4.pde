

int snowHeight = 0;

class Circle {
  int xposition, yposition;

  Circle(int x, int y) {
    xposition = x;
    yposition = y;
  }
  void display() {
    fill(255);
    circle(xposition, yposition, 10);
  }
  void move(int dx, int dy) {
    xposition += dx;
    yposition += dy;

    if (xposition < 0) {
      xposition += width;
    } else if (xposition >= width) {
      xposition -= width;
    }
    if (yposition < 0) {
      yposition += height;
    } else if (yposition >= height) {
      yposition -= height;
      snowHeight++;
    }
    this.display();
  }
}

class Tree {
  int x;

  Tree(int x) {
    this.x = x;
  }

  void display() {
    fill(255, 0, 0);
    rect(x-10, height-40, 20, 40);
    fill(0, 255, 0);
    triangle(x-20, height-40, x+20, height-40, x, height-160);

  }
}

Circle[] circles = new Circle[10];
Tree[] trees = new Tree[4];
int i;
void setup() {

  size(400, 400);
  frameRate(24);
  noStroke();

  for (i = 0; i < circles.length; i++)
    circles[i] = new Circle((int)random(width), (int)random(height));

  for (i = 0; i < trees.length; i++)
    trees[i] = new Tree((int)random(width));

}
int ms = 0;
void draw() {
  background(0xf2);

  if (frameCount == 1)
    ms = millis();
  float timestep = (millis() - ms) / 1000.0f;
  ms = millis();

  for (i = 0; i < trees.length; i++) {
    trees[i].display(); 
  }

  for (Circle c : circles) {
    c.move((int)(random(-50, 50)*timestep), (int)(random(100)*timestep));
  }

  fill(255);
  rect(0, height-snowHeight, width, snowHeight);

}

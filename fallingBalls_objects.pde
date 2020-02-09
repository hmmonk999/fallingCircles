//objects
Ball ball;

Ball[] balls;

void setup() {
  size(600, 600);
  ball = new Ball(width/2, height/2, 78);
  
  balls = new Ball[1000]; //defining the size of the array
  for (int i = 0; i < balls.length; i++) {
    balls[i] = new Ball(random(width), random(height), random(10, 100), color(random(255), random(255), random(255)), color(random(255), random(255), random(255)));
  }
}

void draw() {
  background(#000000);
  ball.move(mouseX, mouseY);
  ball.display();
    for (int i = 0; i < balls.length; i++) {
      balls[i].y += random(3);
      balls[i].display();
    }
}

void mousePressed() {
  ball.f = color(random(255), random(255), random(255));
  
  for (int i = 0; i < balls.length; i++) {
    balls[i].y = random(height);
  }
}

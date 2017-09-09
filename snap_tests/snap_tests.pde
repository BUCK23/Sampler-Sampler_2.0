int gridSize = 50;
Thread thread;
 
void setup() {
  fullScreen();
  noFill();
  thread = new Thread();
}
 
void draw() {
  background(255);
 
  if (mousePressed) {
    thread.x = mouseX;
    thread.y = mouseY;
  } else {
    thread.x = int(thread.x/gridSize)*gridSize;
    thread.y = int(thread.y/gridSize)*gridSize;
  }
 
 strokeWeight(0.01);
  for (int i = 0; i < width/gridSize; i++)
    line(i*gridSize, 0, i*gridSize, height);  // vertical
  for (int i = 0; i < height/gridSize; i++)
    line(0, i*gridSize, width, i*gridSize);    // horizontal
 
  strokeWeight(3);
  line(0, 0, thread.x, thread.y);
}

class Thread {
  float x;
  float y;
}
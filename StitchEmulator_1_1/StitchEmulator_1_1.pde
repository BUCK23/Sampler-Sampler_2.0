int gridSize = 50;
Thread thread;
 
class Thread {
  float xStart;
  float yStart;
  float xEnd;
  float yEnd;
} 
 
void setup() {                      //SETUP
  fullScreen();
  noFill();
  thread = new Thread();          // create thread object
  thread.xStart = 0;              // start point top left
  thread.yStart = 0;              // start point top left
}
 
void draw() {                        //DRAW
  background(255);
 
// snap thread to grid
  if (mousePressed) {
    thread.xEnd = mouseX;
    thread.yEnd = mouseY;
  } else {
    thread.xEnd = int(thread.xEnd/gridSize)*gridSize;
    thread.yEnd = int(thread.yEnd/gridSize)*gridSize;
  }
 
 //draw grid
 strokeWeight(0.01);
  for (int i = 0; i < width/gridSize; i++)
    line(i*gridSize, 0, i*gridSize, height);    // vertical
  for (int i = 0; i < height/gridSize; i++)
    line(0, i*gridSize, width, i*gridSize);    // horizontal
  
 // thread.xStart = stitch end
 // thread.yStart = stitch end                 //THIS NEEDS TO BE ADDED ONCE STITCH ARRARY FUNCTION IS SORTED
  
// draw thread
  strokeWeight(3);
  line(thread.xStart, thread.yStart, thread.xEnd, thread.yEnd);              
}
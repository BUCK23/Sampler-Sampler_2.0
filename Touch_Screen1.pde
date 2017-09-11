int gridSize = 50; //set grid size.
Thread thread;  // declare Thread object
Stitch stitch;  // declare Stitch object

ArrayList<Stitch> stitches = new ArrayList<Stitch>(); // declare Stitch ArryList

void setup() {
  fullScreen();
  noFill();
  thread = new Thread(); //run constructor? does thread have a constructor?
  stitch = new Stitch();  // run constructors

// do I need to start with an index on the array??
  // stitches.add(new Stitch());
}

void draw() {
  background(255);

// redraw all stitches??
  for (int i = 0; i < stitches.size(); i++) {
    stitches.get(i).display();
  }

// calls previous stitch??
 for (int i = 0; i < stitches.size(); i++){
      stitches.get(stitches.size()-1);
    }

// thread moves with mouse and snapps to grid when released
  if (mousePressed) {
    thread.x1 = stitch.x2;
    thread.y1 = stitch.y2;
    thread.x2 = mouseX;
    thread.y2 = mouseY;
  } else {
    thread.x1 = stitch.x2;
    thread.y1 = stitch.y2;
    thread.x2 = int(thread.x2/gridSize)*gridSize;
    thread.y2 = int(thread.y2/gridSize)*gridSize;
    stitches.add(new Stitch());
    stitch.display();
  }

// draws grid
 strokeWeight(0.01);
  for (int i = 0; i < width/gridSize; i++)
    line(i*gridSize, 0, i*gridSize, height);  // vertical
  for (int i = 0; i < height/gridSize; i++)
    line(0, i*gridSize, width, i*gridSize);    // horizontal

// draws thread line
  strokeWeight(3);
  line(thread.x1, thread.y1, thread.x2, thread.y2);
}

class Thread {
  float x1;
  float y1;
  float x2;
  float y2;
}

class Stitch {

  float x1;
  float y1;
  float x2;
  float y2;

//CONSTRUCTOR?? - this create a 'no constructor' error - is it somewhere else??

 /* Stitch (float x1Temp, float y1Temp, float x2Temp, float y2Temp) {
      x1 = x1Temp;
      y1 = y1Temp;
      x2 = x2Temp;
      y2 = y2Temp;
    }*/

// maybe a method for updating the variables??

// draw method
    void display(){
        strokeWeight(3);
        line (x1, y1, x2, y2);
      }
}

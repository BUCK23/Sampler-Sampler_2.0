Stitch stitch;           // Declare stitch object as a globle variable.

class Stitch {

ArrayList<Stitch> stitches = new ArrayList<Stitch>();        //declare array list

  int xStart;
  int yStart;
  int xEnd;
  int yEnd;
  
void drawStitch (int x1, int y1, int x2, int y2) {            // method for creating object

    Stitch stitch = new Stitch();      // declare & construct new object
    stitch.xStart = x1;                  
    stitch.yStart = y1;
    stitch.xEnd = x2;
    stitch.yEnd = y2;
    stitches.add(stitch);              // Objects can be added to an ArrayList with add()
  }

/* void lockStitch() {
  drawStitch(xPos from last stitch, yPos from last stitch, xPos from thread snapped to grid, yPos from thread snapped to grid);
}*/




void draw() {
  
    boolean up = true;                        // is this a top thread?
    int x1 = 0;                                // declare & set x pos
    int y2 = 0;                                 // declare & set y pos
    
    strokeWeight(0.1);                        // set stroke weight
    for (Stitch stitch: stitches) {           // for loop - for (init; test; update) - calling from stitch array
     
      int newX = x + stitch.x;                // decaler var newX (line endpoint) x pos + values from move function (see stitch object arguments)
      int newY = y + stitch.y;                // decaler var newY (line endpoint) y pos + values from move function (see stitch object arguments)
      
      stroke(up ? color(0, 250) : color(200, 20));     // set stroke colour depending on boolean up true/false
                                                // result = test ? expression1 : expression2
                                                // is equivalent to this structure: 
                                                              /*  if (test) {
                                                                    result = expression1                                                               
                                                                      } else {                        
                                                                    result = expression2 
                                                                   }                          */
      line(x, y, newX, newY);                  // draw stitch
      x = newX;                                // makes stitch end start point x for next stitch
      y = newY;                                // makes stitch end start point x for next stitch
      up = ! up;                               // makes boolean up opposite for next stitch
}

}
}
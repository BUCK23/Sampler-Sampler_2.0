class Thread {                                              // create new class

                                // create 'stitch' object + add to stitch array
 
 ArrayList<Stitch> stitches = new ArrayList<Stitch>();      // Declaring the ArrayList, note the use of the syntax "<Stitch>" to indicate our intention to fill this ArrayList with Stitch objects
 
  void move (int x1, int y1, int x2, int y2) {            // method for creating object

     Stitch stitch = new Stitch();      // declare & construct new object
     stitch.x1 = x1;                    // set object variable x1 (line start point)
     stitch.y2 = y1;                    // set object variable y1 (line start point)
     stitch.x2 = x2;                    // set object variable x2 (line end point)
     stitch.y2 = y2;                    // set object variable y2 (line end point)
     stitches.add(stitch);              // Objects can be added to an ArrayList with add()
  }

  
                   // void up()  {          //  UP = 'e'
                  //    move(x1, y1, x2, y2);
                 //}
  
                //void moveChar(char c) {    // Declare variable 'c' of type character
               //if (c == 'e') {
              //up();
             //}
            //}
  
                  // draw thread function

  void draw() {
    boolean up = true;                        // is this a top thread?
    
    PVector object;
    object = new PVector(random(width), random(height));
    
      if (mousePressed) {
    object.x = mouseX;
    object.y = mouseY;
  } else {
    object.x = int(object.x/grid)*grid;
    object.y = int(object.y/grid)*grid;
  }

    ellipse(object.x, object.y, grid/3, grid/3);
    
    int x1 = stitch.x1;                                // declare & set line start point
    int y1 = stitch.y2;                                // declare & set line start point
    int x2 = object.x;                          // decalre and set line end point
    int y2 = object.y;                        // decalre and set line end point
    
    strokeWeight(0.1);                        // set stroke weight
    // for (Stitch stitch: stitches) {           // for loop - for (init; test; update) - calling from stitch array
      //int newX = x1 + stitch.x;                // decaler var newX (line endpoint) x pos + values from move function (see stitch object arguments)
      //int newY = y1 + stitch.y;                // decaler var newY (line endpoint) y pos + values from move function (see stitch object arguments)
      
      stroke(up ? color(0, 250) : color(200, 20));     // set stroke colour depending on boolean up true/false
                                                // result = test ? expression1 : expression2
                                                // is equivalent to this structure: 
                                                              /*  if (test) {
                                                                    result = expression1                                                               
                                                                      } else {                        
                                                                    result = expression2 
                                                                   }                          */
      line(x1, y1, x2, y2);                  // draw stitch
      // x = newX;                                // makes stitch end start point x for next stitch
      // y = newY;                                // makes stitch end start point x for next stitch
      up = ! up;                               // makes boolean up opposite for next stitch
    }
  }
  
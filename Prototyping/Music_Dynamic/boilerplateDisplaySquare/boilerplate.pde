/* Program Documentation & Notes
 - Largest Square Display Possible
 */
//Library - Minim
//
//Global Variables
//
void setup() {
  println(displayWidth,displayHeight);
  int shortSide = (displayWidth > displayHeight) ?displayHeight:displayWidth ; //ternary operator
  shortSide *= 0.9; //90%
  //size(shortSide,shortSide);//have to put number in size//illegalstat exception cannot use a var in size
  println("Display Questions", displayWidth, displayHeight, shortSide);
  println("CANVAS Size Key Variables for setup()", width, height);
  //fullScreen(); //displayWidth, displayHeight
} //End setup
//
void draw() {} //End draw
//
void mousePressed() {} //End Mouse Pressed
//
void keyPressed() {} //End Key Pressed
//
//End MAIN Program

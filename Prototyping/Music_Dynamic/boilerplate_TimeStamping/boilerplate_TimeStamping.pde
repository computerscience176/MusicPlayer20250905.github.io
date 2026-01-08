/* Time Stamping, Program efficiency
 
 */
//
//Library - Minim
//
//Global Variables
int timeStart;
//
void setup() {
  timeStart = millis();//measure program start time called "scope"
  println("Beginning", timeStart);
  //code for setup()
  println("End Setup", timeStart);
} //End setup
//
void draw() {
  println("Draw", timeStart);
  noLoop();
} //End draw
//
void mousePressed() {
} //End Mouse Pressed
//
void keyPressed() {
} //End Key Pressed
//
//End MAIN Program

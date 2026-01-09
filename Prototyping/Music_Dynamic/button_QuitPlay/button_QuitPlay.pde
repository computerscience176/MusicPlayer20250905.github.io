/* Creating Buttons
 - Understanding how the mixing of boilerplate happens
 - Introducing Booleans to communicate between procedures, 1 bite of information
 
 - Specific Debugging Topics
 - MouseX & Y keyVariables
 
 - What to copy and paste
 - Quit & Play DIV
 
 */
//
//Library - Minim
//
//Global Variables

int appWidth, appHeight;
float playX, playY, playWidth, playHeight;
float playlistX, playlistY, playlistWidth, playlistHeight;
Boolean playButton= false;

//
void setup() {
  //Display
  //fullScreen(); //displayWidth //displayHeight
  size(900, 400);
  appWidth = displayWidth;
  appHeight = displayHeight;
  //population
  float playX = appWidth * 2.4/16;
  float playY = appHeight * 20.4/24;
  float playWidth = appWidth * 1.9/16;
  float playHeight = appHeight * 2.5/24;

  float playlistX = appWidth * 13/16;
  float playlistY = appHeight * 11/24;
  float playlistWidth = appWidth * 2/16;
  float playlistHeight = appHeight * 1.5/24;
  //DIVS
  rect(playX, playY, playWidth, playHeight);
  triangle(playX + playWidth*1/4, playY + playHeight*1/4, playX + playWidth*1/4, playY + playHeight*3/4, playX + playWidth*3/4, playY + playHeight*1/2);
  rect(playlistX, playlistY, playlistWidth, playlistHeight);
}
//
//
void draw() {
  //println("My mouse is ", mouseX, mouseY);
  if(mouseX > playX && mouseX < playX+playWidth && mouseY>playY && mouseY<playY+playHeight ) {
    //println("HI");
    playButton=true;
  } else {
   // print(" ");
  }
} //End draw
//
void mousePressed() {
  if (playButton==true) {
    println("Play my Song");
  }else{
    println("");
  }
} //End Mouse Pressed
//
void keyPressed() {
} //End Key Pressed
//
//End MAIN Program

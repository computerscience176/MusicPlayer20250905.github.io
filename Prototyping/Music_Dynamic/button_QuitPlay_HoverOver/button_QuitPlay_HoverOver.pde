/* Creating Buttons
 - Understanding how the mixing of boilerplate happens
 - Introducing Booleans to communicate between procedures, 1 bite of information
 
 - Specific Debugging Topics
 - draw() variables initiated in Global Variables due to LOOP
 - MouseX & Y keyVariables
 - Using println() to test functionality
 
 - What to copy and paste
 - Quit & Play DIV
 
 CONTINUE HERE
 
 - Quit Button: Time Stamp specifically noLoop() and exit()
 
 - Next Program to Update: Music Dynamic v2
 */
//
//Library - Minim
//
//Global Variables
int appWidth, appHeight;
float playX, playY, playWidth, playHeight;
float playlistX, playlistY, playlistWidth, playlistHeight;
Boolean playButton = false;
//
//Color Variables
color resetBackground = #F5F5F5;   // Canvas background
color darkGreen       = #014421;   // Play button rectangle normal
color lightGreen      = #1ABC9C;   // Play button rectangle hover
color whiteColor      = #FFFFFF;   // Triangle symbol inside play button
color cream           = #FFF9E3;   // Playlist rectangle background
color darkStroke      = #013220;   // Border / stroke for all buttons
//
void setup() {
  //Display
  size(900, 400);
  appWidth = width;
  appHeight = height;

  //Population
  playX = appWidth * 2.4/16;
  playY = appHeight * 20.4/24;
  playWidth = appWidth * 1.9/16;
  playHeight = appHeight * 2.5/24;

  playlistX = appWidth * 13/16;
  playlistY = appHeight * 11/24;
  playlistWidth = appWidth * 2/16;
  playlistHeight = appHeight * 1.5/24;

  //Draw initial buttons
  noStroke(); // no border like the example
  fill(darkGreen); // rectangle color
  rect(playX, playY, playWidth, playHeight);
  fill(whiteColor); // triangle symbol color
  triangle(playX + playWidth*1/4, playY + playHeight*1/4, playX + playWidth*1/4, playY + playHeight*3/4, playX + playWidth*3/4, playY + playHeight*1/2);
  fill(cream); // playlist rectangle color
  rect(playlistX, playlistY, playlistWidth, playlistHeight);
}
//
void draw() {
  //Button HoverEffect
  if (mouseX > playX && mouseX < playX + playWidth && mouseY > playY && mouseY < playY + playHeight) {
    playButton = true;
    fill(lightGreen); // hover color
    rect(playX, playY, playWidth, playHeight);
    fill(whiteColor); // triangle stays white
    triangle(playX + playWidth*1/4, playY + playHeight*1/4, playX + playWidth*1/4, playY + playHeight*3/4, playX + playWidth*3/4, playY + playHeight*1/2);
  } else {
    playButton = false;
    fill(darkGreen); // normal rectangle
    rect(playX, playY, playWidth, playHeight);
    fill(whiteColor); // triangle stays white
    triangle(playX + playWidth*1/4, playY + playHeight*1/4, playX + playWidth*1/4, playY + playHeight*3/4, playX + playWidth*3/4, playY + playHeight*1/2);
  }
}
//
void mousePressed() {
  if (playButton == true) {
    println("Play my Song");
  } else {
    println("");
  }
}
//
void keyPressed() {
}
//End MAIN Program

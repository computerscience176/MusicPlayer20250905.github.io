/* Creating Buttons - HoverOver in draw()
 - draw() updates mouseX&Y 60x per second
 - CANVAS will repeat all code
 - effect is rect() are layered like a flip book 60x per second
 - creates change
 
 - Code explored: If-Else
 
 - Next
 - Play Button Function including println()
 - Quit Button Function including noLoop() & exit()
 
 - Next Program to Update: Music Dynamic v2
 */
//
//Library - Minim
//
//Global Variables
int appWidth, appHeight;
float quitDivX, quitDivY, quitDivWidth, quitDivHeight;
float playDivX, playDivY, playDivWidth, playDivHeight;
float playSymbolX1, playSymbolY1, playSymbolX2, playSymbolY2, playSymbolX3, playSymbolY3;
//
Boolean playButton=false, quitButton=false;
//
color resetBackground, resetInk, resetBackgroundDay, resetInkDay, resetBackgroundNight, resetInkNight;
color quitButtonInk;
color softNavy, lightBlue, offWhite, cream, boldRed, white, black, charcoal;
color playColourBackground, playColourSymbol, playColourBackgroundActivated, playColourSymbolActivated;
color quitBackground, quitBackgroundActivated;
Boolean nightMode=false;
//
void setup() {
  //Display
  size(500, 400);
  appWidth = width;
  appHeight = height;
  //
  //Population
  quitDivX = appWidth * 9/10;
  quitDivY = appHeight * 0/10;
  quitDivWidth = appWidth * 1/10;
  quitDivHeight = appHeight * 1/10;

  playDivX = appWidth * 2.4/16;
  playDivY = appHeight * 20.4/24;
  playDivWidth = appWidth * 1.9/16;
  playDivHeight = appHeight * 2.5/24;

  playSymbolX1 = playDivX + playDivWidth*1/4;
  playSymbolY1 = playDivY + playDivHeight*1/4;
  playSymbolX2 = playDivX + playDivWidth*3/4;
  playSymbolY2 = playDivY + playDivHeight*1/2;
  playSymbolX3 = playDivX + playDivWidth*1/4;
  playSymbolY3 = playDivY + playDivHeight*3/4;
  //
  //DIVs
  rect(quitDivX, quitDivY, quitDivWidth, quitDivHeight);
  rect(playDivX, playDivY, playDivWidth, playDivHeight);
  triangle(playSymbolX1, playSymbolY1, playSymbolX2, playSymbolY2, playSymbolX3, playSymbolY3);
  //
  //Colour Population (Named by color itself)
  nightMode=false;

  white = #FFFFFF;
  black = #000000;
  charcoal = #111827;     // Ink / text
  resetBackgroundDay = #F5F5F5; // Canvas background
  resetInkDay = charcoal;
  resetBackgroundNight = #121212;
  resetInkNight = #E5E7EB;

  softNavy = #1E3A8A;       // Play button normal
  lightBlue = #3B82F6;       // Play button hover
  offWhite = #E5E7EB;            // Play triangle
  cream = #FFF7E6;           // Quit button normal
  boldRed = #EF4444;         // Quit button hover

  if ( nightMode == true ) {
    resetBackground = resetBackgroundNight;
    resetInk = resetInkNight;
    playColourBackground = softNavy;
    playColourSymbol = offWhite;
    playColourBackgroundActivated = lightBlue;
    playColourSymbolActivated = white;
    quitBackground = cream;
    quitBackgroundActivated = boldRed;
    quitButtonInk = white;
  } else {
    resetBackground = resetBackgroundDay;
    resetInk = resetInkDay;
    playColourBackground = softNavy;
    playColourSymbol = offWhite;
    playColourBackgroundActivated = lightBlue;
    playColourSymbolActivated = white;
    quitBackground = cream;
    quitBackgroundActivated = boldRed;
    quitButtonInk = charcoal;
  }
} //End setup
//
void draw() {
  background(resetBackground);

  //Play Button Hover Over
  if ( mouseX>playDivX && mouseX<playDivX+playDivWidth && mouseY>playDivY && mouseY<playDivY+playDivHeight ) {
    playButton = true;
    fill(playColourBackgroundActivated);
    rect(playDivX, playDivY, playDivWidth, playDivHeight);
    fill(playColourSymbolActivated);
    triangle(playSymbolX1, playSymbolY1, playSymbolX2, playSymbolY2, playSymbolX3, playSymbolY3);
    fill(resetBackground);
  } else {
    playButton = false;
    fill(playColourBackground);
    rect(playDivX, playDivY, playDivWidth, playDivHeight);
    fill(playColourSymbol);
    triangle(playSymbolX1, playSymbolY1, playSymbolX2, playSymbolY2, playSymbolX3, playSymbolY3);
    fill(resetBackground);
  }

  //Quit Button Hover Over
  if ( mouseX>quitDivX && mouseX<quitDivX+quitDivWidth && mouseY>quitDivY && mouseY<quitDivY+quitDivHeight ) {
    fill(quitBackgroundActivated);
    rect(quitDivX, quitDivY, quitDivWidth, quitDivHeight);
    fill(quitButtonInk);
    text("X", quitDivX+quitDivWidth*1/2, quitDivY+quitDivHeight*3/5);
    fill(resetInk);
  } else {
    fill(quitBackground);
    rect(quitDivX, quitDivY, quitDivWidth, quitDivHeight);
    fill(quitButtonInk);
    text("X", quitDivX+quitDivWidth*1/2, quitDivY+quitDivHeight*3/5);
    fill(resetInk);
  }
} //End draw
//
void mousePressed() {
  //Quit Button: does not use Boolean
  if ( mouseX>quitDivX && mouseX<quitDivX+quitDivWidth && mouseY>quitDivY && mouseY<quitDivY+quitDivHeight ) {
    noLoop();
    exit();
    println("Final Line of mousePressed and finishes draw()");
  }
  //Play Button
  if ( playButton == true ) {
    println("Play My Song");
    playButton=false;
  } else {
    println(" ");
  }
} //End Mouse Pressed
//
void keyPressed() {
} //End Key Pressed
//
//End MAIN Program

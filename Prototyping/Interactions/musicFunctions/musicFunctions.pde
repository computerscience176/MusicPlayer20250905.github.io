/* Creating Buttons - HoverOver in draw()
 - Add Minim from Sketch / Import Library / Minim
 - Display: fullScreen() v. use shorter side as a Square based on fullScreen
 - DIVs and Global Variables, includes DIV Population
 */
//
//Library - Minim
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//
//Global Variables
int appWidth, appHeight;
float topPanelX, topPanelY, topPanelWidth, topPanelHeight;
float logoX, logoY, logoWidth, logoHeight;
float websiteNameX, websiteNameY, websiteNameWidth, websiteNameHeight;
float searchIconX, searchIconY, searchIconWidth, searchIconHeight;
float searchX, searchY, searchWidth, searchHeight;
float profileX, profileY, profileWidth, profileHeight;
float accountX, accountY, accountWidth, accountHeight;
float threeX, threeY, threeWidth, threeHeight;
float imageX, imageY, imageWidth, imageHeight;
float addX, addY, addWidth, addHeight;
float titleX, titleY, titleWidth, titleHeight;
float textboxX, textboxY, textboxWidth, textboxHeight;
float aboutX, aboutY, aboutWidth, aboutHeight;
float byX, byY, byWidth, byHeight;
float lyricsX, lyricsY, lyricsWidth, lyricsHeight;
float iconBoxX, iconBoxY, iconBoxWidth, iconBoxHeight;
float playlistX, playlistY, playlistWidth, playlistHeight;
float volumeX, volumeY, volumeWidth, volumeHeight;
float arabicX, arabicY, arabicWidth, arabicHeight;
float englishX, englishY, englishWidth, englishHeight;
float customizeX, customizeY, customizeWidth, customizeHeight;
float notesX, notesY, notesWidth, notesHeight;
float rectanglearoundtimeX, rectanglearoundtimeY, rectanglearoundtimeWidth, rectanglearoundtimeHeight;
float previousX, previousY, previousWidth, previousHeight;
float playX, playY, playWidth, playHeight;
float forwordX, forwordY, forwordWidth, forwordHeight;
float timeBoxX, timeBoxY, timeBoxWidth, timeBoxHeight;
float timeX, timeY, timeWidth, timeHeight;
float time1X, time1Y, time1Width, time1Height;
float time2X, time2Y, time2Width, time2Height;
float more1X, more1Y, more1Width, more1Height;
float more2X, more2Y, more2Width, more2Height;
float more3X, more3Y, more3Width, more3Height;
//
Boolean playButton=false, quitButton=false;//
//color population 
color resetBackground, resetInk, resetBackgroundDay, resetInkDay, resetBackgroundNight, resetInkNight;
color quitButtonInk;
color softNavy, lightBlue, offWhite, cream, boldRed, white, black, charcoal;
color playColourBackground, playColourSymbol, playColourBackgroundActivated, playColourSymbolActivated;
color quitBackground, quitBackgroundActivated;
Boolean nightMode = false;
/*
void settings() {
 println(displayWidth, displayHeight);
 int shorterSide = ( displayWidth > displayHeight ) ? displayHeight : displayWidth ; //Ternary Operator
 shorterSide *= 0.9; //90%, WINDOW Frame
 size(shorterSide, shorterSide); //ERROR IllegalStateException: cannot use a var in size()
 println("Display Questions", displayWidth, displayHeight, shorterSide);
 println("CANVAS Size Key Variables for setup()", width, height);
 } //End settings
 */
void setup() {
  //Display CANVAS
  //size(); //width //height
  fullScreen(); //displayWidth //displayHeight
  appWidth = displayWidth;
  appHeight = displayHeight;
  //
  divPopulation ();
  DIVs();
  musicButtonShapes();
  nightMode = false;
  colourPopulation();
} //End setup
//
void draw() {
} //End draw
//
void mousePressed() {
} //End Mouse Pressed
//
void keyPressed() {
} //End Key Pressed
//

//End MAIN Program

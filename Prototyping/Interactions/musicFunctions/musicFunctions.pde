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
  //DIV Poplulation
  //
  //DIVs
  //
  float topPanelX = appWidth * 0/16;
  float topPanelY = appHeight * 0/24;
  float topPanelWidth = appWidth * 16/16;
  float topPanelHeight = appHeight * 1/24;
  rect(topPanelX, topPanelY, topPanelWidth, topPanelHeight);

  float logoX = appWidth * 0.2/16;
  float logoY = appHeight * 0/24;
  float logoWidth = appWidth * 1/16;
  float logoHeight = appHeight * 1/24;
  rect(logoX, logoY, logoWidth, logoHeight);

  float websiteNameX = appWidth * 1.2/16;
  float websiteNameY = appHeight * 0/24;
  float websiteNameWidth = appWidth * 4.8/16;
  float websiteNameHeight = appHeight * 1/24;
  rect(websiteNameX, websiteNameY, websiteNameWidth, websiteNameHeight);

  float searchIconX = appWidth * 6/16;
  float searchIconY = appHeight * 0/24;
  float searchIconWidth = appWidth * 0.5/16;
  float searchIconHeight = appHeight * 1/24;
  rect(searchIconX, searchIconY, searchIconWidth, searchIconHeight);

  float searchX = appWidth * 6.8/16;
  float searchY = appHeight * 0/24;
  float searchWidth = appWidth * 4/16;
  float searchHeight = appHeight * 1/24;
  rect(searchX, searchY, searchWidth, searchHeight);

  float profileX = appWidth * 10.8/16;
  float profileY = appHeight * 0/24;
  float profileWidth = appWidth * 1.2/16;
  float profileHeight = appHeight * 1/24;
  rect(profileX, profileY, profileWidth, profileHeight);

  float accountX = appWidth * 12/16;
  float accountY = appHeight * 0/24;
  float accountWidth = appWidth * 2/16;
  float accountHeight = appHeight * 1/24;
  rect(accountX, accountY, accountWidth, accountHeight);



  float threeX = appWidth * 14.6/16;
  float threeY = appHeight * 0/24;
  float threeWidth = appWidth * 1.5/16;
  float threeHeight = appHeight * 1/24;
  rect(threeX, threeY, threeWidth, threeHeight);

  rect(threeX + threeWidth* 1/4, threeY + threeHeight* 1/8, threeWidth*1/2, threeHeight*1.5/8);
  rect(threeX + threeWidth* 1/4, threeY + threeHeight* 2.9/8, threeWidth*1/2, threeHeight*1.5/8);
  rect(threeX + threeWidth* 1/4, threeY + threeHeight* 4.9/8, threeWidth*1/2, threeHeight*1.5/8);

  float imageX = appWidth * 1/16;
  float imageY = appHeight * 1.5/24;
  float imageWidth = appWidth * 14/16;
  float imageHeight = appHeight * 6.5/24;
  rect(imageX, imageY, imageWidth, imageHeight);

  float addX = appWidth * 13/16;
  float addY = appHeight * 6.5/24;
  float addWidth = appWidth * 2/16;
  float addHeight = appHeight * 1.5/24;
  rect(addX, addY, addWidth, addHeight);


  float titleX = appWidth * 3/16;
  float titleY = appHeight * 8.5/24;
  float titleWidth = appWidth * 10/16;
  float titleHeight = appHeight * 2/24;
  rect(titleX, titleY, titleWidth, titleHeight);

  float textboxX = appWidth * 1/16;
  float textboxY = appHeight * 11/24;
  float textboxWidth = appWidth * 11.2/16;
  float textboxHeight = appHeight * 9/24;
  rect(textboxX, textboxY, textboxWidth, textboxHeight);

  float aboutX = appWidth * 1/16;
  float aboutY = appHeight * 11/24;
  float aboutWidth = appWidth * 2.3/16;
  float aboutHeight = appHeight * 1/24;
  rect(aboutX, aboutY, aboutWidth, aboutHeight);

  float byX = appWidth * 1/16;
  float byY = appHeight * 12/24;
  float byWidth = appWidth * 6/16;
  float byHeight = appHeight * 0.5/24;
  rect(byX, byY, byWidth, byHeight);

  float lyricsX = appWidth * 1.5/16;
  float lyricsY = appHeight * 12.5/24;
  float lyricsWidth = appWidth * 10.4/16;
  float lyricsHeight = appHeight * 7/24;
  rect(lyricsX, lyricsY, lyricsWidth, lyricsHeight);

  float iconBoxX = appWidth * 13/16;
  float iconBoxY = appHeight * 11/24;
  float iconBoxWidth = appWidth * 2/16;
  float iconBoxHeight = appHeight * 9/24;
  rect(iconBoxX, iconBoxY, iconBoxWidth, iconBoxHeight);

  float playlistX = appWidth * 13/16;
  float playlistY = appHeight * 11/24;
  float playlistWidth = appWidth * 2/16;
  float playlistHeight = appHeight * 1.5/24;
  rect(playlistX, playlistY, playlistWidth, playlistHeight);

  float volumeX = appWidth * 13/16;
  float volumeY = appHeight * 12.5/24;
  float volumeWidth = appWidth * 2/16;
  float volumeHeight = appHeight * 1.5/24;
  rect(volumeX, volumeY, volumeWidth, volumeHeight);

  float arabicX = appWidth * 13/16;
  float arabicY = appHeight * 14/24;
  float arabicWidth = appWidth * 2/16;
  float arabicHeight = appHeight * 1.5/24;
  rect(arabicX, arabicY, arabicWidth, arabicHeight);

  float englishX = appWidth * 13/16;
  float englishY = appHeight * 15.5/24;
  float englishWidth = appWidth * 2/16;
  float englishHeight = appHeight * 1.5/24;
  rect(englishX, englishY, englishWidth, englishHeight);

  float customizeX = appWidth * 13/16;
  float customizeY = appHeight * 17/24;
  float customizeWidth = appWidth * 2/16;
  float customizeHeight = appHeight * 1.5/24;
  rect(customizeX, customizeY, customizeWidth, customizeHeight);

  float notesX = appWidth * 13/16;
  float notesY = appHeight * 18.5/24;
  float notesWidth = appWidth * 2/16;
  float notesHeight = appHeight * 1.5/24;
  rect(notesX, notesY, notesWidth, notesHeight);


  float rectanglearoundtimeX = appWidth * 1/16;
  float rectanglearoundtimeY = appHeight * 20.4/24;
  float rectanglearoundtimeWidth = appWidth * 14.2/16;
  float rectanglearoundtimeHeight = appHeight * 2.5/24;
  rect(rectanglearoundtimeX, rectanglearoundtimeY, rectanglearoundtimeWidth, rectanglearoundtimeHeight);

  float previousX = appWidth * 1/16;
  float previousY = appHeight * 20.4/24;
  float previousWidth = appWidth * 1.4/16;
  float previousHeight = appHeight * 2.5/24;
  rect(previousX, previousY, previousWidth, previousHeight);

  rect(previousX + previousWidth* 1/4, previousY + previousHeight* 1/4, previousWidth*1/8, previousHeight*1/2);
  triangle(previousX + previousWidth*3/8, previousY + previousHeight*1/2, previousX + previousWidth*3/4, previousY + previousHeight*1/4, previousX + previousWidth*3/4, previousY + previousHeight*3/4);

  float playX = appWidth * 2.4/16;
  float playY = appHeight * 20.4/24;
  float playWidth = appWidth * 1.9/16;
  float playHeight = appHeight * 2.5/24;
  rect(playX, playY, playWidth, playHeight);

  triangle(playX + playWidth*1/4, playY + playHeight*1/4, playX + playWidth*1/4, playY + playHeight*3/4, playX + playWidth*3/4, playY + playHeight*1/2);

  float forwordX = appWidth * 4.3/16;
  float forwordY = appHeight * 20.4/24;
  float forwordWidth = appWidth * 1.4/16;
  float forwordHeight = appHeight * 2.5/24;
  rect(forwordX, forwordY, forwordWidth, forwordHeight);

  triangle(forwordX + forwordWidth * 1/4, forwordY + forwordHeight*1/4, forwordX + forwordWidth* 1/4, forwordY + forwordHeight*3/4, forwordX + forwordWidth*5/8, forwordY + forwordHeight*1/2);
  rect(forwordX + forwordWidth*5/8, forwordY + forwordHeight*1/4, forwordWidth*1/8, forwordHeight*1/2);

  float timeBoxX = appWidth * 6/16;
  float timeBoxY = appHeight * 21/24;
  float timeBoxWidth = appWidth * 8.2/16;
  float timeBoxHeight = appHeight * 1.5/24;
  rect(timeBoxX, timeBoxY, timeBoxWidth, timeBoxHeight);

  float timeX = appWidth * 6.3/16;
  float timeY = appHeight * 21.5/24;
  float timeWidth = appWidth * 7.7/16;
  float timeHeight = appHeight * 0.3/24;
  rect(timeX, timeY, timeWidth, timeHeight);

  float time1X = appWidth * 6.3/16;
  float time1Y = appHeight * 21.8/24;
  float time1Width = appWidth * 1/16;
  float time1Height = appHeight * 0.5/24;
  rect(time1X, time1Y, time1Width, time1Height);

  float time2X = appWidth * 13/16;
  float time2Y = appHeight * 21.8/24;
  float time2Width = appWidth * 1/16;
  float time2Height = appHeight * 0.5/24;
  rect(time2X, time2Y, time2Width, time2Height);


  float more1X = appWidth * 14.6/16;
  float more1Y = appHeight * 20.4/24;
  float more1Width = appWidth * 0.5/16;
  float more1Height = appHeight * 0.87/24;
  rect(more1X, more1Y, more1Width, more1Height);


  float more2X = appWidth * 14.6/16;
  float more2Y = appHeight * 21.2/24;
  float more2Width = appWidth * 0.5/16;
  float more2Height = appHeight * 0.87/24;
  rect(more2X, more2Y, more2Width, more2Height);

  float more3X = appWidth * 14.6/16;
  float more3Y = appHeight * 22/24;
  float more3Width = appWidth * 0.5/16;
  float more3Height = appHeight * 0.87/24;
  rect(more3X, more3Y, more3Width, more3Height);
  //triangle(moreX + moreWidth*1/4, moreY + moreHeight*1/4, moreX + moreWidth*1/4, moreY + moreHeight*3/4, moreX + moreWidth*1/2, moreY + moreHeight*1/2);
  //Fast forward that appears when you click more.
  //triangle(moreX + moreWidth*1/2, moreY + moreHeight*1/4, moreX + moreWidth*1/2, moreY + moreHeight*3/4, moreX + moreWidth*3/4, moreY + moreHeight*1/2);
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
void quitButton() {
}//End Quit Button
//
//End MAIN Program

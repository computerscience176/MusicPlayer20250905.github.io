/* Buttons
 - TBA
 */
//
void quitButton() {
  noLoop(); //Adjusts the exit of the program using finishing draw()
  exit(); //With noLoop(), exit happens here
  println("Final Line of mousePressed and finishes draw()");
}//End Quit Button
//
void DIVs () {
  rect(imageX, imageY, imageWidth, imageHeight);
  rect(addX, addY, addWidth, addHeight);
  rect(titleX, titleY, titleWidth, titleHeight);
  rect(textboxX, textboxY, textboxWidth, textboxHeight);
  rect(aboutX, aboutY, aboutWidth, aboutHeight);
  rect(byX, byY, byWidth, byHeight);
  rect(lyricsX, lyricsY, lyricsWidth, lyricsHeight);
  rect(iconBoxX, iconBoxY, iconBoxWidth, iconBoxHeight);
  rect(playlistX, playlistY, playlistWidth, playlistHeight);
  rect(volumeX, volumeY, volumeWidth, volumeHeight);
  rect(arabicX, arabicY, arabicWidth, arabicHeight);
  rect(englishX, englishY, englishWidth, englishHeight);
  rect(customizeX, customizeY, customizeWidth, customizeHeight);
  rect(notesX, notesY, notesWidth, notesHeight);

  rect(rectanglearoundtimeX, rectanglearoundtimeY, rectanglearoundtimeWidth, rectanglearoundtimeHeight);

  rect(previousX, previousY, previousWidth, previousHeight);
  rect(previousX + previousWidth*1/4, previousY + previousHeight*1/4, previousWidth*1/8, previousHeight*1/2);

  rect(playX, playY, playWidth, playHeight);

  rect(forwordX, forwordY, forwordWidth, forwordHeight);
  rect(forwordX + forwordWidth*5/8, forwordY + forwordHeight*1/4, forwordWidth*1/8, forwordHeight*1/2);

  rect(timeBoxX, timeBoxY, timeBoxWidth, timeBoxHeight);
  rect(timeX, timeY, timeWidth, timeHeight);
  rect(time1X, time1Y, time1Width, time1Height);
  rect(time2X, time2Y, time2Width, time2Height);

  rect(more1X, more1Y, more1Width, more1Height);
  rect(more2X, more2Y, more2Width, more2Height);
  rect(more3X, more3Y, more3Width, more3Height);
}//end DIVS
//
void musicButtonShapes() {
  triangle(
    previousX + previousWidth*3/8, previousY + previousHeight*1/2,
    previousX + previousWidth*3/4, previousY + previousHeight*1/4,
    previousX + previousWidth*3/4, previousY + previousHeight*3/4
    );

  triangle(
    playX + playWidth*1/4, playY + playHeight*1/4,
    playX + playWidth*1/4, playY + playHeight*3/4,
    playX + playWidth*3/4, playY + playHeight*1/2
    );

  triangle(
    forwordX + forwordWidth*1/4, forwordY + forwordHeight*1/4,forwordX + forwordWidth*1/4, forwordY + forwordHeight*3/4,forwordX + forwordWidth*5/8, forwordY + forwordHeight*1/2);
}//end music Button Shapes
//
//End Buttons Subprogram

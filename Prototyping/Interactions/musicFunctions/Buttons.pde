/* -----------------------
   BUTTONS SUBPROGRAM
   Includes: Quit, Previous, Play, Forward, Volume, More, Add, Three Lines, Customize, Notes, Search, Playlist, Bookmark, Speed
   All comments preserved, all floats local
   -----------------------
*/

// Quit Button (commented out, preserved)
 /*
 void quitButton() {
   noLoop(); // Adjusts the exit of the program using finishing draw()
   exit();   // With noLoop(), exit happens here
   println("Final Line of mousePressed and finishes draw()");
 } // End Quit Button
 */

// Draw all rectangles / outer DIVs
void DIVs() {
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
  rect(forwardX, forwardY, forwardWidth, forwardHeight);
  rect(forwardX + forwardWidth*5/8, forwardY + forwardHeight*1/4, forwardWidth*1/8, forwardHeight*1/2);
  rect(timeBoxX, timeBoxY, timeBoxWidth, timeBoxHeight);
  rect(timeX, timeY, timeWidth, timeHeight);
  rect(time1X, time1Y, time1Width, time1Height);
  rect(time2X, time2Y, time2Width, time2Height);
  rect(more1X, more1Y, more1Width, more1Height);
  rect(more2X, more2Y, more2Width, more2Height);
  rect(more3X, more3Y, more3Width, more3Height);
}

// Draw inner button shapes / triangles / circles / plus / minus / stars / lines
void musicButtonShapes() {
  // Previous Triangle
  triangle(previousX + previousWidth*3/8, previousY + previousHeight/2,
           previousX + previousWidth*3/4, previousY + previousHeight/4,
           previousX + previousWidth*3/4, previousY + previousHeight*3/4);

  // Play Triangle
  triangle(playX + playWidth*1/4, playY + playHeight*1/4,
           playX + playWidth*1/4, playY + playHeight*3/4,
           playX + playWidth*3/4, playY + playHeight/2);

  // Forward Triangle
  triangle(forwardX + forwardWidth*1/4, forwardY + forwardHeight*1/4,
           forwardX + forwardWidth*1/4, forwardY + forwardHeight*3/4,
           forwardX + forwardWidth*5/8, forwardY + forwardHeight/2);
  rect(forwardX + forwardWidth*5/8, forwardY + forwardHeight*1/4, forwardWidth*1/8, forwardHeight*1/2);

  // Volume Bar
  float padding = volumeWidth*0.25;
  float notesLineY = volumeY + volumeHeight/2;
  line(volumeX + padding, notesLineY, volumeX + volumeWidth - padding, notesLineY);
  line(volumeX + padding - padding*0.25, notesLineY, volumeX + padding + padding*0.25, notesLineY); // Minus
  float plusX = volumeX + volumeWidth - padding + padding*0.5;
  line(plusX - padding*0.25, notesLineY, plusX + padding*0.25, notesLineY); // Plus horizontal
  line(plusX, notesLineY - padding*0.25, plusX, notesLineY + padding*0.25); // Plus vertical

  // More Buttons Circles
  ellipse(more1X + more1Width/2, more1Y + more1Height/2, min(more1Width, more1Height)*0.6, min(more1Width, more1Height)*0.6);
  ellipse(more2X + more2Width/2, more2Y + more2Height/2, min(more2Width, more2Height)*0.6, min(more2Width, more2Height)*0.6);
  ellipse(more3X + more3Width/2, more3Y + more3Height/2, min(more3Width, more3Height)*0.6, min(more3Width, more3Height)*0.6);

  // Three lines button
  rect(threeX + threeWidth*1/4, threeY + threeHeight*1/8, threeWidth*1/2, threeHeight*1.5/8);
  rect(threeX + threeWidth*1/4, threeY + threeHeight*2.9/8, threeWidth*1/2, threeHeight*1.5/8);
  rect(threeX + threeWidth*1/4, threeY + threeHeight*4.9/8, threeWidth*1/2, threeHeight*1.5/8);

  // Add Button Plus
  float addPadX = addWidth/4;
  float addPadY = addHeight/4;
  float left = addX + addPadX;
  float right = addX + addWidth - addPadX;
  float top = addY + addPadY;
  float bottom = addY + addHeight - addPadY;
  float centerX = addX + addWidth/2;
  float centerY = addY + addHeight/2;
  float barWidth = addWidth/4;
  float barHeight = addHeight/4;
  beginShape();
  vertex(centerX - barWidth/2, top);
  vertex(centerX - barWidth/2, centerY - barHeight/2);
  vertex(left, centerY - barHeight/2);
  vertex(left, centerY + barHeight/2);
  vertex(centerX - barWidth/2, centerY + barHeight/2);
  vertex(centerX - barWidth/2, bottom);
  vertex(centerX + barWidth/2, bottom);
  vertex(centerX + barWidth/2, centerY + barHeight/2);
  vertex(right, centerY + barHeight/2);
  vertex(right, centerY - barHeight/2);
  vertex(centerX + barWidth/2, centerY - barHeight/2);
  vertex(centerX + barWidth/2, top);
  endShape(CLOSE);

  // Customize Star
  float customizePadX = customizeWidth*1/4;
  float customizePadY = customizeHeight*1/4;
  float customizeCenterX = customizeX + customizeWidth/2;
  float customizeCenterY = customizeY + customizeHeight/2;
  float outerRadius = (customizeHeight - 2*customizePadY)/2;
  float innerRadius = outerRadius/2;
  beginShape();
  for (int i=0; i<14; i++){
    float radius = (i%2==0)? outerRadius : innerRadius;
    float angle = PI/7*i;
    float x = customizeCenterX + cos(angle)*radius;
    float y = customizeCenterY + sin(angle)*radius;
    vertex(x,y);
  }
  endShape(CLOSE);

  // Notes Button with folded corner
  float padX = notesWidth*1/4;
  float padY = notesHeight*1/4;
  float notesInnerX = notesX + padX;
  float notesInnerY = notesY + padY;
  float notesInnerW = notesWidth - 2*padX;
  float notesInnerH = notesHeight - 2*padY;
  rect(notesInnerX, notesInnerY, notesInnerW, notesInnerH, 5);
  float triSize = notesInnerW*1/8;
  triangle(notesInnerX + notesInnerW, notesInnerY, notesInnerX + notesInnerW - triSize, notesInnerY, notesInnerX + notesInnerW, notesInnerY + triSize);
  float notesLinePad = notesInnerH*0.24;
  for(int i=1;i<=3;i++){
    float lineY = notesInnerY + i*notesLinePad;
    line(notesInnerX + notesInnerW*1/4, lineY, notesInnerX + notesInnerW*3/4, lineY);
  }

  // Search Icon
  float searchIconX = appWidth*6/16;
  float searchIconY = appHeight*0/24;
  float searchIconWidth = appWidth*0.5/16;
  float searchIconHeight = appHeight*1/24;
  rect(searchIconX, searchIconY, searchIconWidth, searchIconHeight);
  float searchPaddingX = searchIconWidth/4;
  float searchPaddingY = searchIconHeight/4;
  float circleX = searchIconX + searchIconWidth/2;
  float circleY = searchIconY + searchIconHeight/2;
  float circleDiameter = min(searchIconWidth - 2*searchPaddingX, searchIconHeight - 2*searchPaddingY)*0.6;
  ellipse(circleX, circleY, circleDiameter, circleDiameter);
  float lineLength = circleDiameter*0.5;
  line(circleX + circleDiameter/2, circleY + circleDiameter/2, circleX + circleDiameter/2 + lineLength*0.7, circleY + circleDiameter/2 + lineLength*0.7);

  // Playlist Inner Circle
  float playlistPadding = min(playlistWidth, playlistHeight)*1/4;
  ellipse(playlistX + playlistWidth/2, playlistY + playlistHeight/2, min(playlistWidth, playlistHeight) - 2*playlistPadding, min(playlistWidth, playlistHeight) - 2*playlistPadding);

  // --- BOOKMARK BUTTON (commented out but preserved) ---
  /*
  float bookmarkX = appWidth * 13/16;
  float bookmarkY = appHeight * 6.5/24;
  float bookmarkW = appWidth * 2/16;
  float bookmarkH = appHeight * 1.5/24;
  rect(bookmarkX, bookmarkY, bookmarkW, bookmarkH);
  float bookmarkPadX = bookmarkW/4;
  float bookmarkPadY = bookmarkH/4;
  beginShape();
  vertex(bookmarkX + bookmarkPadX, bookmarkY + bookmarkPadY);
  vertex(bookmarkX + bookmarkW - bookmarkPadX, bookmarkY + bookmarkPadY);
  vertex(bookmarkX + bookmarkW - bookmarkPadX, bookmarkY + bookmarkH - bookmarkPadY);
  vertex(bookmarkX + bookmarkW/2, bookmarkY + bookmarkH - bookmarkPadY*0.3);
  vertex(bookmarkX + bookmarkPadX, bookmarkY + bookmarkH - bookmarkPadY);
  endShape(CLOSE);
  */

  // Speed Buttons (commented out, preserved)
  /*
  float speedX = appWidth*10/16;
  float speedY = appHeight*20.4/24;
  float speedWidth = appWidth*1.5/16;
  float speedHeight = appHeight*2/24;
  rect(speedX, speedY, speedWidth, speedHeight);
  triangle(speedX + speedWidth*1/4, speedY + speedHeight*1/4, speedX + speedWidth*1/4, speedY + speedHeight*3/4, speedX + speedWidth*1/2, speedY + speedHeight/2);
  triangle(speedX + speedWidth*1/2, speedY + speedHeight*1/4, speedX + speedWidth*1/2, speedY + speedHeight*3/4, speedX + speedWidth*3/4, speedY + speedHeight/2);
  */
}

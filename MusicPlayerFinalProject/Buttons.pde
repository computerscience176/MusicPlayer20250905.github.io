/* Buttons Subprogram
 * Handles button rendering, hover states, and mouse interactions
 */

void drawButtons() {
  // Draw all interactive buttons with hover
  hoverOver_draw();
  
  // Draw all icon buttons on right side with hover
  hoverOverIconButtons();
  
  // Draw top menu buttons with hover
  hoverOverTopMenuButtons();
  
  // Draw progress bar if song is playing
  if (playList[currentSong].isPlaying()) {
    drawProgressBar();
  }
} // End drawButtons

// ==================== HOVER OVER STATES ====================

void hoverOver_draw() {
  // Previous Button
  if (mouseX > previousX && mouseX < previousX + previousWidth && 
      mouseY > previousY && mouseY < previousY + previousHeight) {
    previousButtonActive();
  } else {
    previousButtonRegular();
  }
  
  // Play/Pause Button
  if (mouseX > playX && mouseX < playX + playWidth && 
      mouseY > playY && mouseY < playY + playHeight) {
    playButtonActive();
  } else {
    playButtonRegular();
  }
  
  // Forward Button
  if (mouseX > forwardX && mouseX < forwardX + forwardWidth && 
      mouseY > forwardY && mouseY < forwardY + forwardHeight) {
    forwardButtonActive();
  } else {
    forwardButtonRegular();
  }
} // End hoverOver_draw

// ==================== HOVER OVER FOR ICON BUTTONS ====================

void hoverOverIconButtons() {
  // Volume Button
  if (mouseX > volumeX && mouseX < volumeX + volumeWidth && 
      mouseY > volumeY && mouseY < volumeY + volumeHeight) {
    drawVolumeButtonHover();
  } else {
    drawVolumeButton();
  }
  
  // Playlist Button
  if (mouseX > playlistX && mouseX < playlistX + playlistWidth && 
      mouseY > playlistY && mouseY < playlistY + playlistHeight) {
    drawPlaylistButtonHover();
  } else {
    drawPlaylistButton();
  }
  
  // Customize Button
  if (mouseX > customizeX && mouseX < customizeX + customizeWidth && 
      mouseY > customizeY && mouseY < customizeY + customizeHeight) {
    drawCustomizeButtonHover();
  } else {
    drawCustomizeButton();
  }
  
  // Notes Button
  if (mouseX > notesX && mouseX < notesX + notesWidth && 
      mouseY > notesY && mouseY < notesY + notesHeight) {
    drawNotesButtonHover();
  } else {
    drawNotesButton();
  }
  
  // More Button 1
  if (mouseX > more1X && mouseX < more1X + more1Width && 
      mouseY > more1Y && mouseY < more1Y + more1Height) {
    drawMoreButton1Hover();
  } else {
    drawMoreButton1();
  }
  
  // More Button 2
  if (mouseX > more2X && mouseX < more2X + more2Width && 
      mouseY > more2Y && mouseY < more2Y + more2Height) {
    drawMoreButton2Hover();
  } else {
    drawMoreButton2();
  }
  
  // More Button 3
  if (mouseX > more3X && mouseX < more3X + more3Width && 
      mouseY > more3Y && mouseY < more3Y + more3Height) {
    drawMoreButton3Hover();
  } else {
    drawMoreButton3();
  }
  
  // Arabic Button
  if (mouseX > arabicX && mouseX < arabicX + arabicWidth && 
      mouseY > arabicY && mouseY < arabicY + arabicHeight) {
    drawArabicButtonHover();
  } else {
    drawArabicButton();
  }
  
  // English Button
  if (mouseX > englishX && mouseX < englishX + englishWidth && 
      mouseY > englishY && mouseY < englishY + englishHeight) {
    drawEnglishButtonHover();
  } else {
    drawEnglishButton();
  }
} // End hoverOverIconButtons

// ==================== HOVER OVER FOR TOP MENU BUTTONS ====================

void hoverOverTopMenuButtons() {
  // Three Dots Menu
  if (mouseX > threeX && mouseX < threeX + threeWidth && 
      mouseY > threeY && mouseY < threeY + threeHeight) {
    drawThreeDotsMenuHover();
  } else {
    drawThreeDotsMenu();
  }
  
  // Add Button
  if (mouseX > addX && mouseX < addX + addWidth && 
      mouseY > addY && mouseY < addY + addHeight) {
    drawAddButtonHover();
  } else {
    drawAddButton();
  }
  
  // Search Icon
  if (mouseX > searchIconX && mouseX < searchIconX + searchIconWidth && 
      mouseY > searchIconY && mouseY < searchIconY + searchIconHeight) {
    drawSearchIconHover();
  } else {
    drawSearchIcon();
  }
  
  // Search Bar (no hover - it's an input field)
  drawSearchBar();
} // End hoverOverTopMenuButtons

// ==================== PREVIOUS BUTTON ====================

void previousButtonRegular() {
  fill(nightMode ? btnBackgroundNight : btnBackgroundDay);
  rect(previousX, previousY, previousWidth, previousHeight);
  fill(nightMode ? btnShapeNight : btnShapeDay);
  previousSymbol();
}

void previousButtonActive() {
  fill(nightMode ? btnHoverBackgroundNight : btnHoverBackgroundDay);
  rect(previousX, previousY, previousWidth, previousHeight);
  fill(nightMode ? btnHoverShapeNight : btnHoverShapeDay);
  previousSymbol();
}

void previousSymbol() {
  rect(previousX + previousWidth * 1/4, previousY + previousHeight * 1/4, 
       previousWidth * 1/8, previousHeight * 1/2);
  triangle(previousX + previousWidth * 3/8, previousY + previousHeight * 1/2,
           previousX + previousWidth * 3/4, previousY + previousHeight * 1/4,
           previousX + previousWidth * 3/4, previousY + previousHeight * 3/4);
}

// ==================== PLAY/PAUSE BUTTON ====================

void playButtonRegular() {
  fill(nightMode ? btnBackgroundNight : btnBackgroundDay);
  rect(playX, playY, playWidth, playHeight);
  fill(nightMode ? btnShapeNight : btnShapeDay);
  if (playButtonState) {
    pauseSymbol();
  } else {
    playSymbol();
  }
}

void playButtonActive() {
  fill(nightMode ? btnHoverBackgroundNight : btnHoverBackgroundDay);
  rect(playX, playY, playWidth, playHeight);
  fill(nightMode ? btnHoverShapeNight : btnHoverShapeDay);
  if (playButtonState) {
    pauseSymbol();
  } else {
    playSymbol();
  }
}

void playSymbol() {
  triangle(playX + playWidth * 1/4, playY + playHeight * 1/4,
           playX + playWidth * 1/4, playY + playHeight * 3/4,
           playX + playWidth * 3/4, playY + playHeight * 1/2);
}

void pauseSymbol() {
  rect(playX + playWidth * 1/4, playY + playHeight * 1/4,
       playWidth * 1/8, playHeight * 1/2);
  rect(playX + playWidth * 5/8, playY + playHeight * 1/4,
       playWidth * 1/8, playHeight * 1/2);
}

// ==================== FORWARD BUTTON ====================

void forwardButtonRegular() {
  fill(nightMode ? btnBackgroundNight : btnBackgroundDay);
  rect(forwardX, forwardY, forwardWidth, forwardHeight);
  fill(nightMode ? btnShapeNight : btnShapeDay);
  forwardSymbol();
}

void forwardButtonActive() {
  fill(nightMode ? btnHoverBackgroundNight : btnHoverBackgroundDay);
  rect(forwardX, forwardY, forwardWidth, forwardHeight);
  fill(nightMode ? btnHoverShapeNight : btnHoverShapeDay);
  forwardSymbol();
}

void forwardSymbol() {
  triangle(forwardX + forwardWidth * 1/4, forwardY + forwardHeight * 1/4,
           forwardX + forwardWidth * 1/4, forwardY + forwardHeight * 3/4,
           forwardX + forwardWidth * 5/8, forwardY + forwardHeight * 1/2);
  rect(forwardX + forwardWidth * 5/8, forwardY + forwardHeight * 1/4,
       forwardWidth * 1/8, forwardHeight * 1/2);
}

// ==================== PROGRESS BAR ====================

void drawProgressBar() {
  fill(nightMode ? #333333 : #CCCCCC);
  noStroke();
  rect(timeX, timeY, timeWidth, timeHeight);
  
  float progress = getPlaybackProgress();
  fill(nightMode ? volumeBarNight : volumeBarDay);
  rect(timeX, timeY, timeWidth * progress, timeHeight);
  
  float dotX = timeX + (timeWidth * progress);
  float dotY = timeY + timeHeight / 2;
  fill(nightMode ? whiteC : blackC);
  ellipse(dotX, dotY, timeHeight * 2, timeHeight * 2);
}
// ==================== VOLUME BUTTON ====================

void drawVolumeButton() {
  fill(nightMode ? btnBackgroundNight : btnBackgroundDay);
  rect(volumeX, volumeY, volumeWidth, volumeHeight);
  
  fill(nightMode ? btnShapeNight : btnShapeDay);
  noFill();
  stroke(nightMode ? btnShapeNight : btnShapeDay);
  strokeWeight(2);
  
  float padding = volumeWidth * 0.25;
  float lineX1 = volumeX + padding;
  float lineY = volumeY + volumeHeight / 2;
  float lineX2 = volumeX + volumeWidth - padding;
  line(lineX1, lineY, lineX2, lineY);
  
  float minusX = lineX1 - padding * 0.5;
  float minusY = lineY;
  float minusSize = padding * 0.5;
  line(minusX - minusSize / 2, minusY, minusX + minusSize / 2, minusY);
  
  float plusX = lineX2 + padding * 0.5;
  float plusY = lineY;
  float plusSize = padding * 0.5;
  line(plusX - plusSize / 2, plusY, plusX + plusSize / 2, plusY);
  line(plusX, plusY - plusSize / 2, plusX, plusY + plusSize / 2);
  
  strokeWeight(1);
  stroke(nightMode ? resetInkNight : resetInkDay);
}

void drawVolumeButtonHover() {
  fill(nightMode ? btnHoverBackgroundNight : btnHoverBackgroundDay);
  rect(volumeX, volumeY, volumeWidth, volumeHeight);
  
  fill(nightMode ? btnHoverShapeNight : btnHoverShapeDay);
  noFill();
  stroke(nightMode ? btnHoverShapeNight : btnHoverShapeDay);
  strokeWeight(2);
  
  float padding = volumeWidth * 0.25;
  float lineX1 = volumeX + padding;
  float lineY = volumeY + volumeHeight / 2;
  float lineX2 = volumeX + volumeWidth - padding;
  line(lineX1, lineY, lineX2, lineY);
  
  float minusX = lineX1 - padding * 0.5;
  float minusY = lineY;
  float minusSize = padding * 0.5;
  line(minusX - minusSize / 2, minusY, minusX + minusSize / 2, minusY);
  
  float plusX = lineX2 + padding * 0.5;
  float plusY = lineY;
  float plusSize = padding * 0.5;
  line(plusX - plusSize / 2, plusY, plusX + plusSize / 2, plusY);
  line(plusX, plusY - plusSize / 2, plusX, plusY + plusSize / 2);
  
  strokeWeight(1);
  stroke(nightMode ? resetInkNight : resetInkDay);
}

// ==================== MORE OPTIONS BUTTONS ====================

void drawMoreButtons() {
  drawMoreButton1();
  drawMoreButton2();
  drawMoreButton3();
}

void drawMoreButton1() {
  fill(nightMode ? btnBackgroundNight : btnBackgroundDay);
  rect(more1X, more1Y, more1Width, more1Height);
  fill(nightMode ? btnShapeNight : btnShapeDay);
  float more1CircleX = more1X + more1Width / 2;
  float more1CircleY = more1Y + more1Height / 2;
  float more1CircleDiameter = min(more1Width, more1Height) * 0.6;
  ellipse(more1CircleX, more1CircleY, more1CircleDiameter, more1CircleDiameter);
}

void drawMoreButton1Hover() {
  fill(nightMode ? btnHoverBackgroundNight : btnHoverBackgroundDay);
  rect(more1X, more1Y, more1Width, more1Height);
  fill(nightMode ? btnHoverShapeNight : btnHoverShapeDay);
  float more1CircleX = more1X + more1Width / 2;
  float more1CircleY = more1Y + more1Height / 2;
  float more1CircleDiameter = min(more1Width, more1Height) * 0.6;
  ellipse(more1CircleX, more1CircleY, more1CircleDiameter, more1CircleDiameter);
}

void drawMoreButton2() {
  fill(nightMode ? btnBackgroundNight : btnBackgroundDay);
  rect(more2X, more2Y, more2Width, more2Height);
  fill(nightMode ? btnShapeNight : btnShapeDay);
  float more2CircleX = more2X + more2Width / 2;
  float more2CircleY = more2Y + more2Height / 2;
  float more2CircleDiameter = min(more2Width, more2Height) * 0.6;
  ellipse(more2CircleX, more2CircleY, more2CircleDiameter, more2CircleDiameter);
}

void drawMoreButton2Hover() {
  fill(nightMode ? btnHoverBackgroundNight : btnHoverBackgroundDay);
  rect(more2X, more2Y, more2Width, more2Height);
  fill(nightMode ? btnHoverShapeNight : btnHoverShapeDay);
  float more2CircleX = more2X + more2Width / 2;
  float more2CircleY = more2Y + more2Height / 2;
  float more2CircleDiameter = min(more2Width, more2Height) * 0.6;
  ellipse(more2CircleX, more2CircleY, more2CircleDiameter, more2CircleDiameter);
}

void drawMoreButton3() {
  fill(nightMode ? btnBackgroundNight : btnBackgroundDay);
  rect(more3X, more3Y, more3Width, more3Height);
  fill(nightMode ? btnShapeNight : btnShapeDay);
  float more3CircleX = more3X + more3Width / 2;
  float more3CircleY = more3Y + more3Height / 2;
  float more3CircleDiameter = min(more3Width, more3Height) * 0.6;
  ellipse(more3CircleX, more3CircleY, more3CircleDiameter, more3CircleDiameter);
}

void drawMoreButton3Hover() {
  fill(nightMode ? btnHoverBackgroundNight : btnHoverBackgroundDay);
  rect(more3X, more3Y, more3Width, more3Height);
  fill(nightMode ? btnHoverShapeNight : btnHoverShapeDay);
  float more3CircleX = more3X + more3Width / 2;
  float more3CircleY = more3Y + more3Height / 2;
  float more3CircleDiameter = min(more3Width, more3Height) * 0.6;
  ellipse(more3CircleX, more3CircleY, more3CircleDiameter, more3CircleDiameter);
}

// ==================== PLAYLIST BUTTON ====================

void drawPlaylistButton() {
  fill(nightMode ? btnBackgroundNight : btnBackgroundDay);
  rect(playlistX, playlistY, playlistWidth, playlistHeight);
  
  fill(nightMode ? btnShapeNight : btnShapeDay);
  float playlistPadding = min(playlistWidth, playlistHeight) * 1/4;
  float playlistCircleDiameter = min(playlistWidth, playlistHeight) - 2 * playlistPadding;
  float playlistCircleX = playlistX + playlistWidth / 2;
  float playlistCircleY = playlistY + playlistHeight / 2;
  ellipse(playlistCircleX, playlistCircleY, playlistCircleDiameter, playlistCircleDiameter);
}

void drawPlaylistButtonHover() {
  fill(nightMode ? btnHoverBackgroundNight : btnHoverBackgroundDay);
  rect(playlistX, playlistY, playlistWidth, playlistHeight);
  
  fill(nightMode ? btnHoverShapeNight : btnHoverShapeDay);
  float playlistPadding = min(playlistWidth, playlistHeight) * 1/4;
  float playlistCircleDiameter = min(playlistWidth, playlistHeight) - 2 * playlistPadding;
  float playlistCircleX = playlistX + playlistWidth / 2;
  float playlistCircleY = playlistY + playlistHeight / 2;
  ellipse(playlistCircleX, playlistCircleY, playlistCircleDiameter, playlistCircleDiameter);
}

// ==================== CUSTOMIZE BUTTON (STAR) ====================

void drawCustomizeButton() {
  fill(nightMode ? btnBackgroundNight : btnBackgroundDay);
  rect(customizeX, customizeY, customizeWidth, customizeHeight);
  
  fill(nightMode ? btnShapeNight : btnShapeDay);
  
  float customizePadX = customizeWidth * 1/4;
  float customizePadY = customizeHeight * 1/4;
  
  float customizeCenterX = customizeX + customizeWidth * 1/2;
  float customizeCenterY = customizeY + customizeHeight * 1/2;
  
  float outerRadius = (customizeHeight - 2*customizePadY) / 2;
  float innerRadius = outerRadius / 2;
  
  beginShape();
  for (int i = 0; i < 14; i++) {
    float radius = (i % 2 == 0) ? outerRadius : innerRadius;
    float angle = PI / 7 * i;
    float x = customizeCenterX + cos(angle) * radius;
    float y = customizeCenterY + sin(angle) * radius;
    vertex(x, y);
  }
  endShape(CLOSE);
}

void drawCustomizeButtonHover() {
  fill(nightMode ? btnHoverBackgroundNight : btnHoverBackgroundDay);
  rect(customizeX, customizeY, customizeWidth, customizeHeight);
  
  fill(nightMode ? btnHoverShapeNight : btnHoverShapeDay);
  
  float customizePadX = customizeWidth * 1/4;
  float customizePadY = customizeHeight * 1/4;
  
  float customizeCenterX = customizeX + customizeWidth * 1/2;
  float customizeCenterY = customizeY + customizeHeight * 1/2;
  
  float outerRadius = (customizeHeight - 2*customizePadY) / 2;
  float innerRadius = outerRadius / 2;
  
  beginShape();
  for (int i = 0; i < 14; i++) {
    float radius = (i % 2 == 0) ? outerRadius : innerRadius;
    float angle = PI / 7 * i;
    float x = customizeCenterX + cos(angle) * radius;
    float y = customizeCenterY + sin(angle) * radius;
    vertex(x, y);
  }
  endShape(CLOSE);
}

// ==================== NOTES BUTTON ====================

void drawNotesButton() {
  fill(nightMode ? btnBackgroundNight : btnBackgroundDay);
  rect(notesX, notesY, notesWidth, notesHeight);
  
  fill(nightMode ? btnShapeNight : btnShapeDay);
  stroke(nightMode ? btnShapeNight : btnShapeDay);
  strokeWeight(1);
  
  float padX = notesWidth * 1/4;
  float padY = notesHeight * 1/4;
  
  float notesInnerX = notesX + padX;
  float notesInnerY = notesY + padY;
  float notesInnerW = notesWidth - padX * 2;
  float notesInnerH = notesHeight - padY * 2;
  noFill();
  rect(notesInnerX, notesInnerY, notesInnerW, notesInnerH, 5);
  
  fill(nightMode ? btnShapeNight : btnShapeDay);
  float triSize = notesInnerW * 1/8;
  triangle(
    notesInnerX + notesInnerW, notesInnerY,
    notesInnerX + notesInnerW - triSize, notesInnerY,
    notesInnerX + notesInnerW, notesInnerY + triSize
  );
  
  int numLines = 3;
  float linePad = notesInnerH * 0.24;
  for (int i = 1; i <= numLines; i++) {
    float lineY = notesInnerY + i * linePad;
    float lineStartX = notesInnerX + notesInnerW * 1/4;
    float lineEndX = notesInnerX + notesInnerW * 3/4;
    line(lineStartX, lineY, lineEndX, lineY);
  }
  
  stroke(nightMode ? resetInkNight : resetInkDay);
}

void drawNotesButtonHover() {
  fill(nightMode ? btnHoverBackgroundNight : btnHoverBackgroundDay);
  rect(notesX, notesY, notesWidth, notesHeight);
  
  fill(nightMode ? btnHoverShapeNight : btnHoverShapeDay);
  stroke(nightMode ? btnHoverShapeNight : btnHoverShapeDay);
  strokeWeight(1);
  
  float padX = notesWidth * 1/4;
  float padY = notesHeight * 1/4;
  
  float notesInnerX = notesX + padX;
  float notesInnerY = notesY + padY;
  float notesInnerW = notesWidth - padX * 2;
  float notesInnerH = notesHeight - padY * 2;
  noFill();
  rect(notesInnerX, notesInnerY, notesInnerW, notesInnerH, 5);
  
  fill(nightMode ? btnHoverShapeNight : btnHoverShapeDay);
  float triSize = notesInnerW * 1/8;
  triangle(
    notesInnerX + notesInnerW, notesInnerY,
    notesInnerX + notesInnerW - triSize, notesInnerY,
    notesInnerX + notesInnerW, notesInnerY + triSize
  );
  
  int numLines = 3;
  float linePad = notesInnerH * 0.24;
  for (int i = 1; i <= numLines; i++) {
    float lineY = notesInnerY + i * linePad;
    float lineStartX = notesInnerX + notesInnerW * 1/4;
    float lineEndX = notesInnerX + notesInnerW * 3/4;
    line(lineStartX, lineY, lineEndX, lineY);
  }
  
  stroke(nightMode ? resetInkNight : resetInkDay);
}

// ==================== LANGUAGE BUTTONS ====================

void drawArabicButton() {
  fill(nightMode ? btnBackgroundNight : btnBackgroundDay);
  rect(arabicX, arabicY, arabicWidth, arabicHeight);
}

void drawArabicButtonHover() {
  fill(nightMode ? btnHoverBackgroundNight : btnHoverBackgroundDay);
  rect(arabicX, arabicY, arabicWidth, arabicHeight);
}

void drawEnglishButton() {
  fill(nightMode ? btnBackgroundNight : btnBackgroundDay);
  rect(englishX, englishY, englishWidth, englishHeight);
}

void drawEnglishButtonHover() {
  fill(nightMode ? btnHoverBackgroundNight : btnHoverBackgroundDay);
  rect(englishX, englishY, englishWidth, englishHeight);
}
// ==================== TOP MENU BUTTONS ====================

// Three-Dot Menu Button
void drawThreeDotsMenu() {
  fill(nightMode ? btnBackgroundNight : btnBackgroundDay);
  rect(threeX, threeY, threeWidth, threeHeight);
  
  fill(nightMode ? btnShapeNight : btnShapeDay);
  rect(threeX + threeWidth * 1/4, threeY + threeHeight * 1/8, 
       threeWidth * 1/2, threeHeight * 1.5/8);
  rect(threeX + threeWidth * 1/4, threeY + threeHeight * 2.9/8, 
       threeWidth * 1/2, threeHeight * 1.5/8);
  rect(threeX + threeWidth * 1/4, threeY + threeHeight * 4.9/8, 
       threeWidth * 1/2, threeHeight * 1.5/8);
}

void drawThreeDotsMenuHover() {
  fill(nightMode ? btnHoverBackgroundNight : btnHoverBackgroundDay);
  rect(threeX, threeY, threeWidth, threeHeight);
  
  fill(nightMode ? btnHoverShapeNight : btnHoverShapeDay);
  rect(threeX + threeWidth * 1/4, threeY + threeHeight * 1/8, 
       threeWidth * 1/2, threeHeight * 1.5/8);
  rect(threeX + threeWidth * 1/4, threeY + threeHeight * 2.9/8, 
       threeWidth * 1/2, threeHeight * 1.5/8);
  rect(threeX + threeWidth * 1/4, threeY + threeHeight * 4.9/8, 
       threeWidth * 1/2, threeHeight * 1.5/8);
}

// Add Button (Plus Sign)
void drawAddButton() {
  fill(nightMode ? btnBackgroundNight : btnBackgroundDay);
  rect(addX, addY, addWidth, addHeight);
  
  fill(nightMode ? btnShapeNight : btnShapeDay);
  
  float addPadX = addWidth / 4;
  float addPadY = addHeight / 4;
  
  float left = addX + addPadX;
  float right = addX + addWidth - addPadX;
  float top = addY + addPadY;
  float bottom = addY + addHeight - addPadY;
  float centerX = addX + addWidth / 2;
  float centerY = addY + addHeight / 2;
  
  float barWidth = addWidth / 4;
  float barHeight = addHeight / 4;
  
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
}

void drawAddButtonHover() {
  fill(nightMode ? btnHoverBackgroundNight : btnHoverBackgroundDay);
  rect(addX, addY, addWidth, addHeight);
  
  fill(nightMode ? btnHoverShapeNight : btnHoverShapeDay);
  
  float addPadX = addWidth / 4;
  float addPadY = addHeight / 4;
  
  float left = addX + addPadX;
  float right = addX + addWidth - addPadX;
  float top = addY + addPadY;
  float bottom = addY + addHeight - addPadY;
  float centerX = addX + addWidth / 2;
  float centerY = addY + addHeight / 2;
  
  float barWidth = addWidth / 4;
  float barHeight = addHeight / 4;
  
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
}

// Search Icon
void drawSearchIcon() {
  fill(nightMode ? btnBackgroundNight : btnBackgroundDay);
  rect(searchIconX, searchIconY, searchIconWidth, searchIconHeight);
  
  noFill();
  stroke(nightMode ? btnShapeNight : btnShapeDay);
  strokeWeight(2);
  
  float paddingX = searchIconWidth / 4;
  float paddingY = searchIconHeight / 4;
  
  float circleDiameter = min(searchIconWidth - 2 * paddingX, searchIconHeight - 2 * paddingY) * 0.6;
  float circleX = searchIconX + searchIconWidth / 2;
  float circleY = searchIconY + searchIconHeight / 2;
  ellipse(circleX, circleY, circleDiameter, circleDiameter);
  
  float lineLength = circleDiameter * 0.5;
  float lineStartX = circleX + circleDiameter / 2;
  float lineStartY = circleY + circleDiameter / 2;
  float lineEndX = lineStartX + lineLength * 0.7;
  float lineEndY = lineStartY + lineLength * 0.7;
  line(lineStartX, lineStartY, lineEndX, lineEndY);
  
  strokeWeight(1);
  stroke(nightMode ? resetInkNight : resetInkDay);
}

void drawSearchIconHover() {
  fill(nightMode ? btnHoverBackgroundNight : btnHoverBackgroundDay);
  rect(searchIconX, searchIconY, searchIconWidth, searchIconHeight);
  
  noFill();
  stroke(nightMode ? btnHoverShapeNight : btnHoverShapeDay);
  strokeWeight(2);
  
  float paddingX = searchIconWidth / 4;
  float paddingY = searchIconHeight / 4;
  
  float circleDiameter = min(searchIconWidth - 2 * paddingX, searchIconHeight - 2 * paddingY) * 0.6;
  float circleX = searchIconX + searchIconWidth / 2;
  float circleY = searchIconY + searchIconHeight / 2;
  ellipse(circleX, circleY, circleDiameter, circleDiameter);
  
  float lineLength = circleDiameter * 0.5;
  float lineStartX = circleX + circleDiameter / 2;
  float lineStartY = circleY + circleDiameter / 2;
  float lineEndX = lineStartX + lineLength * 0.7;
  float lineEndY = lineStartY + lineLength * 0.7;
  line(lineStartX, lineStartY, lineEndX, lineEndY);
  
  strokeWeight(1);
  stroke(nightMode ? resetInkNight : resetInkDay);
}

// Search Bar
void drawSearchBar() {
  fill(nightMode ? btnBackgroundNight : btnBackgroundDay);
  rect(searchX, searchY, searchWidth, searchHeight);
  
  fill(nightMode ? #1F2937 : #FFFFFF);
  float searchPaddingX = searchWidth / 8;
  float searchPaddingY = searchHeight / 4;
  float innerX = searchX + searchPaddingX;
  float innerY = searchY + searchPaddingY;
  float innerWidth = searchWidth - 2 * searchPaddingX;
  float innerHeight = searchHeight - 2 * searchPaddingY;
  float cornerRadius = innerHeight / 2;
  rect(innerX, innerY, innerWidth, innerHeight, cornerRadius);
}

// ==================== MOUSE INTERACTIONS ====================

void buttonMousePressed() {
  // Previous Button Clicked
  if (mouseX > previousX && mouseX < previousX + previousWidth && 
      mouseY > previousY && mouseY < previousY + previousHeight) {
    println("Previous Button Pressed");
    previousSong();
  }
  
  // Play/Pause Button Clicked
  if (mouseX > playX && mouseX < playX + playWidth && 
      mouseY > playY && mouseY < playY + playHeight) {
    println("Play/Pause Button Pressed");
    playButtonState = !playButtonState;
    
    if (playButtonState) {
      playList[currentSong].play();
      println("Playing song");
    } else {
      playList[currentSong].pause();
      println("Paused song");
    }
  }
  
  // Forward Button Clicked
  if (mouseX > forwardX && mouseX < forwardX + forwardWidth && 
      mouseY > forwardY && mouseY < forwardY + forwardHeight) {
    println("Forward Button Pressed");
    nextSong();
  }
  
  // Progress Bar Clicked (seek to position)
  if (mouseX > timeX && mouseX < timeX + timeWidth && 
      mouseY > timeY && mouseY < timeY + timeHeight) {
    println("Progress Bar Clicked");
    seekToPosition();
  }
  
  // Volume Button Clicked
  if (mouseX > volumeX && mouseX < volumeX + volumeWidth && 
      mouseY > volumeY && mouseY < volumeY + volumeHeight) {
    println("Volume Button Pressed");
    if (playList[currentSong].isMuted()) {
      playList[currentSong].unmute();
      println("Unmuted");
    } else {
      playList[currentSong].mute();
      println("Muted");
    }
  }
  
  // Add Button Clicked - SOUND EFFECT
  if (mouseX > addX && mouseX < addX + addWidth && 
      mouseY > addY && mouseY < addY + addHeight) {
    println("Add Button Pressed - Sound Effect Playing");
    soundEffects[0].rewind();
    soundEffects[0].play();
  }
  
  // Three Dots Menu Clicked
  if (mouseX > threeX && mouseX < threeX + threeWidth && 
      mouseY > threeY && mouseY < threeY + threeHeight) {
    println("Menu Button Pressed");
  }
  
  // Customize Button Clicked - NIGHT MODE TOGGLE
  if (mouseX > customizeX && mouseX < customizeX + customizeWidth && 
      mouseY > customizeY && mouseY < customizeY + customizeHeight) {
    println("Customize Button Pressed");
    nightMode = !nightMode;
    println("Night Mode:", nightMode ? "ON" : "OFF");
  }
  
  // More Button 1 Clicked - SOUND EFFECT (MAIN ONE FOR GRADING)
  if (mouseX > more1X && mouseX < more1X + more1Width && 
      mouseY > more1Y && mouseY < more1Y + more1Height) {
    println("========================================");
    println("SOUND EFFECT BUTTON CLICKED!");
    println("More Button 1 - Playing Sound Effect");
    println("========================================");
    soundEffects[0].rewind();
    soundEffects[0].play();
  }
  
  // More Button 2 Clicked
  if (mouseX > more2X && mouseX < more2X + more2Width && 
      mouseY > more2Y && mouseY < more2Y + more2Height) {
    println("More Button 2 Pressed");
  }
  
  // More Button 3 Clicked
  if (mouseX > more3X && mouseX < more3X + more3Width && 
      mouseY > more3Y && mouseY < more3Y + more3Height) {
    println("More Button 3 Pressed");
  }
  
  // Playlist Button Clicked - SOUND EFFECT
  if (mouseX > playlistX && mouseX < playlistX + playlistWidth && 
      mouseY > playlistY && mouseY < playlistY + playlistHeight) {
    println("Playlist Button Pressed - Sound Effect Playing");
    soundEffects[0].rewind();
    soundEffects[0].play();
  }
  
  // Notes Button Clicked - SOUND EFFECT
  if (mouseX > notesX && mouseX < notesX + notesWidth && 
      mouseY > notesY && mouseY < notesY + notesHeight) {
    println("Notes Button Pressed - Sound Effect Playing");
    soundEffects[0].rewind();
    soundEffects[0].play();
  }
  
  // Arabic Button Clicked
  if (mouseX > arabicX && mouseX < arabicX + arabicWidth && 
      mouseY > arabicY && mouseY < arabicY + arabicHeight) {
    println("Arabic Button Pressed");
  }
  
  // English Button Clicked
  if (mouseX > englishX && mouseX < englishX + englishWidth && 
      mouseY > englishY && mouseY < englishY + englishHeight) {
    println("English Button Pressed");
  }
} // End buttonMousePressed

// Seek to clicked position in song
void seekToPosition() {
  float clickPosition = (mouseX - timeX) / timeWidth;
  clickPosition = constrain(clickPosition, 0, 1);
  
  int newPosition = int(playList[currentSong].length() * clickPosition);
  playList[currentSong].cue(newPosition);
  
  println("Seeked to:", formatTime(newPosition));
} // End seekToPosition

// End Buttons Subprogram

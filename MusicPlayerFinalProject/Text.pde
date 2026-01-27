/* Text Subprogram
 * Handles font loading, text setup, and dynamic text rendering
 */

void textSetup() {
  // Load fonts with error handling
  println("Loading fonts...");

  for (int i = 0; i < 4; i++) {
    try {
      textFonts[i] = createFont(fontNames[i], fontSizes[i]);
      println("✓ Font loaded:", fontNames[i]);
    }
    catch (Exception e) {
      println("⚠ Font not found:", fontNames[i], "- using Arial");
      textFonts[i] = createFont("Arial", fontSizes[i]);
    }
  }

  println("Text setup complete!");
} // End textSetup

void textdraw() {
  // Set text color based on night mode
  fill(nightMode ? resetInkNight : resetInkDay);

  // --- Website Name (CENTER) ---
  textAlign(CENTER, BASELINE);
  autoFitText(websiteText, textFonts[0], fontSizes[0],
    websiteNameX, websiteNameY, websiteNameWidth, websiteNameHeight, true);

  // --- Username (LEFT) ---
  textAlign(LEFT, BASELINE);
  autoFitText(usernameText, textFonts[1], fontSizes[1],
    accountX, accountY, accountWidth, accountHeight, false);

  // --- About (CENTER) ---
  textAlign(CENTER, BASELINE);
  autoFitText(aboutText, textFonts[1], fontSizes[1],
    aboutX, aboutY, aboutWidth, aboutHeight, true);

  // --- Title (CENTER) ---
  textAlign(CENTER, BASELINE);
  autoFitText(titleText, textFonts[3], fontSizes[3],
    titleX, titleY, titleWidth, titleHeight, true);

  // --- Reciter/Author (LEFT) ---
  textAlign(LEFT, BASELINE);
  autoFitText(reciterText, textFonts[2], fontSizes[2],
    byX, byY, byWidth, byHeight, false);

  // --- Time Current (LEFT) ---
   textAlign(LEFT, BASELINE);
   autoFitText(timeCurrentText, textFonts[1], fontSizes[1],
   time1X, time1Y, time1Width, time1Height, false);
   
   // --- Time Total (RIGHT) ---
   textAlign(RIGHT, RIGHT);
   autoFitText(timeTotalText, textFonts[1], fontSizes[1],
   time2X + time2Width, time2Y, time2Width, time2Height, false);
   
} // End textdraw

// Auto-fit text to DIV with padding
void autoFitText(String txt, PFont font, float startSize,
  float x, float y, float w, float h, boolean centerX) {

  // Padding for text within DIV
  float paddingX = 8;
  float paddingY = 6;
  float size = startSize;
  float minSize = 8;

  // Set initial font and size
  textFont(font, size);

  int safetyCounter = 0;
  int maxIterations = 50;

  // Scale text down until it fits within DIV bounds (with padding)
  while ((textWidth(txt) > w - 2*paddingX ||
    textAscent() + textDescent() > h - 2*paddingY)
    && size > minSize
    && safetyCounter < maxIterations) {

    size *= 0.95; // Reduce by 5% each iteration
    textSize(size);
    safetyCounter++;
  }

  if (safetyCounter >= maxIterations) {
    println("⚠ Warning: Text scaling reached max iterations for:", txt);
  }

  // Calculate horizontal position
  float drawX;
  if (centerX) {
    drawX = x + w / 2; // Center text in DIV
  } else {
    drawX = x + paddingX; // Left-align with padding
  }

  // Calculate vertical position (top + padding + ascent)
  float drawY = y + paddingY + textAscent();

  // Draw the text
  text(txt, drawX, drawY);
} // End autoFitText

// Update text content based on current song
void updateTextForSong() {
  if (playListMetaData[currentSong] != null) {
    // Update title
    String songTitle = playListMetaData[currentSong].title();
    if (songTitle != null && !songTitle.equals("")) {
      titleText = songTitle;
    } else {
      titleText = "Song " + (currentSong + 1);
    }

    // Update reciter/author
    String author = playListMetaData[currentSong].author();
    if (author != null && !author.equals("")) {
      reciterText = "Reciter: " + author;
    } else {
      reciterText = "Reciter: Unknown";
    }

    // Update time displays
    timeCurrentText = getCurrentSongTime();
    timeTotalText = getTotalSongTime();
  }
} // End updateTextForSong

// Draw lyrics or additional text in lyrics box
void drawLyrics() {
  fill(nightMode ? resetInkNight : resetInkDay);
  textAlign(LEFT, TOP);
  textFont(textFonts[1], 24);

  String lyricsContent = "";

  // Get lyrics from metadata if available
  if (playListMetaData[currentSong] != null) {
    String songLyrics = playListMetaData[currentSong].lyrics();
    if (songLyrics != null && !songLyrics.equals("")) {
      lyricsContent = songLyrics;
    } else {
      lyricsContent = "No lyrics available for this track.";
    }
  }

  // Draw lyrics with padding
  float padding = 15;
  text(lyricsContent,
    lyricsX + padding,
    lyricsY + padding,
    lyricsWidth - 2*padding,
    lyricsHeight - 2*padding);
} // End drawLyrics

// End Text Subprogram

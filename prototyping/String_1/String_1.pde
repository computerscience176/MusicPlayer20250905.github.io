// ---------------------------
// DISPLAY SETUP
// ---------------------------

// Fullscreen keeps the program responsive on all screens
fullScreen();

// Store screen dimensions (used for aspect ratio math)
int appWidth  = displayWidth;
int appHeight = displayHeight;


// ---------------------------
// COLOR SYSTEM (EASY TO EDIT)
// ---------------------------

// All colors are centralized here
// If you want color later, ONLY change these values
color BACKGROUND_COLOR = color(255); // white background
color BOX_COLOR        = color(255); // white boxes
color TEXT_COLOR       = color(0);   // black text
color BORDER_COLOR     = color(0);   // black borders


// ---------------------------
// GLOBAL UI SETTINGS
// ---------------------------

// Padding keeps text away from edges (professional spacing)
float padding = 20;

// Constant decrease controls how fast text shrinks
float constantDecrease = 0.98;


// ---------------------------
// DIV (SECTION) SETUP
// ---------------------------

// Number of interface boxes
int numberOfDivs = 5;

// Arrays store position and size of each div
float[] DivX      = new float[numberOfDivs];
float[] DivY      = new float[numberOfDivs];
float[] DivWidth  = new float[numberOfDivs];
float[] DivHeight = new float[numberOfDivs];


// ---------------------------
// DIV POSITIONS (ASPECT RATIO SAFE)
// ---------------------------

// These values scale automatically on any screen
DivX[0] = appWidth*1.2/16;   DivY[0] = appHeight*0/24;   DivWidth[0] = appWidth*4.8/16;  DivHeight[0] = appHeight*1/24;
DivX[1] = appWidth*12/16;    DivY[1] = appHeight*0/24;   DivWidth[1] = appWidth*2/16;    DivHeight[1] = appHeight*1/24;
DivX[2] = appWidth*1/16;     DivY[2] = appHeight*12/24;  DivWidth[2] = appWidth*6/16;    DivHeight[2] = appHeight*0.6/24;
DivX[3] = appWidth*3/16;     DivY[3] = appHeight*8.5/24; DivWidth[3] = appWidth*10/16;   DivHeight[3] = appHeight*2/24;
DivX[4] = appWidth*1/16;     DivY[4] = appHeight*11/24;  DivWidth[4] = appWidth*2.3/16;  DivHeight[4] = appHeight*1/24;


// ---------------------------
// DIV TEXT CONTENT
// ---------------------------

String[] DivText = {
  "Website Name",
  "Username Given",
  "Reciter: Maher Al Muaiqly", // NOT CENTERED
  "TITLE",
  "ABOUT"
};


// ---------------------------
// FONT CHOICES (SYSTEM SAFE)
// ---------------------------

// Only fonts guaranteed on school computers
String[] fontNames = {
  "Segoe UI Bold",   // header
  "Segoe UI",        // account
  "Segoe UI",        // reciter
  "Cambria Bold",    // title
  "Calibri"          // about
};

// Starting font sizes (auto-scaled later)
float[] fontSizes = { 36, 18, 18, 48, 22 };

// Store fonts
PFont[] DivFont = new PFont[numberOfDivs];


// ---------------------------
// BACKGROUND
// ---------------------------

background(BACKGROUND_COLOR);


// ---------------------------
// AUTO-FIT TEXT TO DIV WIDTH
// ---------------------------

for (int i = 0; i < numberOfDivs; i++) {

  float testSize = fontSizes[i];
  DivFont[i] = createFont(fontNames[i], testSize);
  textFont(DivFont[i], testSize);

  // Shrink text until it fits inside the box width
  while (textWidth(DivText[i]) > DivWidth[i] - 2*padding) {
    testSize *= constantDecrease;
    DivFont[i] = createFont(fontNames[i], testSize);
    textFont(DivFont[i], testSize);
  }

  // Save final size
  fontSizes[i] = testSize;
}


// ---------------------------
// DRAW DIVS + TEXT
// ---------------------------

for (int i = 0; i < numberOfDivs; i++) {

  // Draw box
  fill(BOX_COLOR);
  stroke(BORDER_COLOR);
  strokeWeight(1.5);
  rect(DivX[i], DivY[i], DivWidth[i], DivHeight[i]);

  // Draw text
  fill(TEXT_COLOR);
  textFont(DivFont[i], fontSizes[i]);

  // Reciter text → LEFT aligned (important)
  if (i == 2) {
    textAlign(LEFT, CENTER);
    text(
      DivText[i],
      DivX[i] + padding,
      DivY[i] + DivHeight[i]/2
    );
  }
  // All other text → CENTER aligned
  else {
    textAlign(CENTER, CENTER);
    text(
      DivText[i],
      DivX[i] + DivWidth[i]/2,
      DivY[i] + DivHeight[i]/2
    );
  }
}


// ---------------------------
// LYRICS / TEXT BOX
// ---------------------------

// Box dimensions
float lyricsX = appWidth*1.5/16;
float lyricsY = appHeight*12.8/24;
float lyricsWidth  = appWidth*10.4/16;
float lyricsHeight = appHeight*7/24;

// Placeholder text
String lyrics = "Text will appear here...";

// Font setup
float lyricsSize = 20;
PFont lyricsFont = createFont("Segoe UI", lyricsSize);
textFont(lyricsFont, lyricsSize);

// Auto-fit lyrics text
while (textAscent() + textDescent() > lyricsHeight - 2*padding) {
  lyricsSize *= constantDecrease;
  lyricsFont = createFont("Segoe UI", lyricsSize);
  textFont(lyricsFont, lyricsSize);
}

// Draw lyrics box
fill(BOX_COLOR);
stroke(BORDER_COLOR);
rect(lyricsX, lyricsY, lyricsWidth, lyricsHeight);

// Draw lyrics text
fill(TEXT_COLOR);
textAlign(LEFT, TOP);
text(
  lyrics,
  lyricsX + padding,
  lyricsY + padding,
  lyricsWidth - 2*padding,
  lyricsHeight - 2*padding
);


// ---------------------------
// TIME BOXES (START / END)
// ---------------------------

float[] timeX = { appWidth*6.3/16, appWidth*13/16 };
float timeY = appHeight*21.8/24;
float timeW = appWidth*1/16;
float timeH = appHeight*0.5/24;

String[] timeText = { "0:00", "0:00" };

for (int i = 0; i < 2; i++) {

  // Draw time box
  fill(BOX_COLOR);
  stroke(BORDER_COLOR);
  rect(timeX[i], timeY, timeW, timeH);

  // Draw time text
  fill(TEXT_COLOR);
  textFont(createFont("Segoe UI", 14), 14);
  textAlign(CENTER, CENTER);
  text(timeText[i], timeX[i] + timeW/2, timeY + timeH/2);
}

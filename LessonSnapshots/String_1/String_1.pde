// ---------------------------
// DISPLAY SETUP
// ---------------------------
fullScreen();                                // Make program fullscreen
int appWidth = displayWidth;                 // Store screen width
int appHeight = displayHeight;               // Store screen height

// ---------------------------
// COLOR SETTINGS
// ---------------------------
color BACKGROUND_COLOR = color(255);         // White background
color BOX_COLOR        = color(255);         // White boxes
color TEXT_COLOR       = color(0);           // Black text
color BORDER_COLOR     = color(0);           // Black borders
float padding = 20;                           // Padding for text inside boxes
float constantDecrease = 0.98;               // Font shrink factor

// ---------------------------
// DIV SETUP
// ---------------------------
int numberOfDivs = 5;                         // Number of main interface boxes
float[] DivX      = new float[numberOfDivs];  // X positions of DIVs
float[] DivY      = new float[numberOfDivs];  // Y positions of DIVs
float[] DivWidth  = new float[numberOfDivs];  // Widths of DIVs
float[] DivHeight = new float[numberOfDivs];  // Heights of DIVs

// ---------------------------
// DIV POSITION & SIZE (aspect ratio scaled)
// ---------------------------
DivX[0] = appWidth*1.2/16; DivY[0] = appHeight*0/24;  DivWidth[0] = appWidth*4.8/16; DivHeight[0] = appHeight*1/24;
DivX[1] = appWidth*12/16;  DivY[1] = appHeight*0/24;  DivWidth[1] = appWidth*2/16;   DivHeight[1] = appHeight*1/24;
DivX[2] = appWidth*1/16;   DivY[2] = appHeight*12/24; DivWidth[2] = appWidth*6/16;   DivHeight[2] = appHeight*0.6/24;
DivX[3] = appWidth*3/16;   DivY[3] = appHeight*8.5/24;DivWidth[3] = appWidth*10/16;  DivHeight[3] = appHeight*2/24;
DivX[4] = appWidth*1/16;   DivY[4] = appHeight*11/24;DivWidth[4] = appWidth*2.3/16; DivHeight[4] = appHeight*1/24;

// ---------------------------
// DIV TEXT CONTENT
// ---------------------------
String[] DivText = {
  "Website Name",           // Header
  "Username Given",         // Account name
  "Reciter: Maher Al Muaiqly", // Reciter (LEFT aligned)
  "TITLE",                  // Title
  "ABOUT"                   // About section
};
/* 
// FONT INSPECTION
// Uncomment to see all system fonts
String[] availableFonts = PFont.list();
for (int i = 0; i < availableFonts.length; i++) {
  println(i + ": " + availableFonts[i]);
}
*/

// ---------------------------
// FONT SETUP 
// ---------------------------
String[] fontNames = {"Segoe UI Bold","Segoe UI","Segoe UI","Cambria Bold","Calibri"}; // Font per DIV
float[] fontSizes = {36, 20, 22, 65, 35}; // Starting font sizes
PFont[] DivFont = new PFont[numberOfDivs]; // Array to store fonts

// ---------------------------
// BACKGROUND
// ---------------------------
background(BACKGROUND_COLOR);                 // Fill background

// ---------------------------
// AUTO-FIT TEXT TO DIV WIDTH
// ---------------------------
for(int i=0;i<numberOfDivs;i++){
  float testSize = fontSizes[i];             // Temporary font size
  DivFont[i] = createFont(fontNames[i], testSize); // Load font
  textFont(DivFont[i], testSize);            // Apply font

  while(textWidth(DivText[i]) > DivWidth[i]-2*padding){ // Shrink if too wide
    testSize *= constantDecrease;            // Reduce by factor
    DivFont[i] = createFont(fontNames[i], testSize); // Reload font
    textFont(DivFont[i], testSize);          // Apply font
  }
  fontSizes[i] = testSize;                   // Save final font size
}

// ---------------------------
// DRAW DIVS AND TEXT
// ---------------------------
for(int i=0;i<numberOfDivs;i++){
  fill(BOX_COLOR);                            // Box fill
  stroke(BORDER_COLOR);                        // Box border
  strokeWeight(2.0);                           // Border thickness
  rect(DivX[i],DivY[i],DivWidth[i],DivHeight[i]); // Draw box

  fill(TEXT_COLOR);                            // Text color
  textFont(DivFont[i], fontSizes[i]);          // Apply font

  if(i==2){                                    // Reciter → LEFT aligned
    textAlign(LEFT,CENTER);                    // Align left
    text(DivText[i], DivX[i]+padding, DivY[i]+DivHeight[i]/2); // Draw text
  } else {                                     // All other text → CENTER
    textAlign(CENTER,CENTER);
    text(DivText[i], DivX[i]+DivWidth[i]/2, DivY[i]+DivHeight[i]/2); // Draw text
  }
}

// ---------------------------
// LYRICS / TEXT BOX
// ---------------------------
float lyricsX = appWidth*1.5/16;              // X position
float lyricsY = appHeight*12.8/24;           // Y position
float lyricsWidth  = appWidth*10.4/16;       // Width
float lyricsHeight = appHeight*7/24;         // Height
String lyrics = "Lyrics will appear here..."; // Placeholder
float lyricsSize = 20;                        // Starting font size
PFont lyricsFont = createFont("Segoe UI",lyricsSize); // Create font
textFont(lyricsFont,lyricsSize);              // Apply font

while(textAscent()+textDescent() > lyricsHeight-2*padding){ // Shrink if too tall
  lyricsSize *= constantDecrease;             // Reduce font size
  lyricsFont = createFont("Segoe UI",lyricsSize); // Reload font
  textFont(lyricsFont,lyricsSize);            // Apply font
}

// Draw lyrics box
fill(BOX_COLOR);                               // White box
stroke(BORDER_COLOR);                           // Black border
strokeWeight(2.0);                              // Thickness
rect(lyricsX,lyricsY,lyricsWidth,lyricsHeight); // Draw box

fill(TEXT_COLOR);                               // Text black
textAlign(LEFT,TOP);                            // Top-left alignment
text(lyrics, lyricsX+padding, lyricsY+padding, lyricsWidth-2*padding, lyricsHeight-2*padding); // Draw lyrics

// ---------------------------
// TIME BOXES (start/end)
// ---------------------------
float[] timeX = { appWidth*6.3/16, appWidth*13/16 }; // X positions
float timeY = appHeight*21.8/24;                    // Y position
float timeW = appWidth*1/16;                        // Width
float timeH = appHeight*0.5/24;                     // Height
String[] timeText = {"0:00","0:00"};               // Placeholder times

for(int i=0;i<2;i++){
  fill(BOX_COLOR);                                 // Box white
  stroke(BORDER_COLOR);                             // Border black
  strokeWeight(2.0);                                // Thickness
  rect(timeX[i],timeY,timeW,timeH);                // Draw box

  fill(TEXT_COLOR);                                 // Text black
  textFont(createFont("Segoe UI",20),20);          // Font size 14
  textAlign(CENTER,CENTER);                         // Center text
  text(timeText[i],timeX[i]+timeW/2,timeY+timeH/2); // Draw text
}

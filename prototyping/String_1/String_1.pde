// ---------------------------
// Display Setup
fullScreen();
int appWidth = displayWidth;
int appHeight = displayHeight;

// ---------------------------
// DIV Setup
int numberOfDivs = 5;
float[] DivX = new float[numberOfDivs];
float[] DivY = new float[numberOfDivs];
float[] DivWidth = new float[numberOfDivs];
float[] DivHeight = new float[numberOfDivs];

// DIV positions and sizes
DivX[0] = appWidth*1.2/16;   DivY[0] = appHeight*0/24;   DivWidth[0] = appWidth*4.8/16;  DivHeight[0] = appHeight*1/24;
DivX[1] = appWidth*12/16;    DivY[1] = appHeight*0/24;   DivWidth[1] = appWidth*2/16;    DivHeight[1] = appHeight*1/24;
DivX[2] = appWidth*1/16;     DivY[2] = appHeight*12/24;  DivWidth[2] = appWidth*6/16;    DivHeight[2] = appHeight*0.5/24;
DivX[3] = appWidth*3/16;     DivY[3] = appHeight*8.5/24; DivWidth[3] = appWidth*10/16;   DivHeight[3] = appHeight*2/24;
DivX[4] = appWidth*1/16;     DivY[4] = appHeight*11/24;  DivWidth[4] = appWidth*2.3/16;  DivHeight[4] = appHeight*1/24;

// ---------------------------
// DIV Text
String[] DivText = {
  "Website Name",
  "Account: Maher",
  "Reciter: Maher Al Muaqily",
  "TITLE",
  "ABOUT"
};

// ---------------------------
// Fonts & Sizes
PFont[] DivFont = new PFont[numberOfDivs];
float[] fontSize = {40, 27, 16, 60, 24};
// Professional fonts
String[] fontNames = {"Segoe UI", "Calibri", "Arial Bold", "Verdana", "Cambria"};

for(int i=0; i<numberOfDivs; i++){
  DivFont[i] = createFont(fontNames[i], fontSize[i]);
}

// ---------------------------
// Lyrics Box
float lyricsX = appWidth*1.5/16;
float lyricsY = appHeight*12.5/24;
float lyricsWidth = appWidth*10.4/16;
float lyricsHeight = appHeight*7/24;
String lyrics = "Lyrics will appear here...";
PFont lyricsFont = createFont("Segoe UI", 20);

// ---------------------------
// Time Boxes
float[] timeX = { appWidth*6.3/16, appWidth*13/16 };
float[] timeY = { appHeight*21.8/24, appHeight*21.8/24 };
float[] timeWidth = { appWidth*1/16, appWidth*1/16 };
float[] timeHeight = { appHeight*0.5/24, appHeight*0.5/24 };
String[] timeText = {"0:00","0:00"};
PFont[] timeFont = { createFont("Segoe UI",14), createFont("Segoe UI",14) };

// ---------------------------
// Colors
color bgColor = #F9FAFC;           // soft off-white background
color panelColor = #2F4F9F;        // professional blue accent
color textColor = #000000;         // black text

background(bgColor);

// ---------------------------
// Draw DIVs with aspect ratio & padding
float padding = 12; // pixels
for(int i=0; i<numberOfDivs; i++){
  if(i==1 || i==3){ // Account & Title
    fill(panelColor);
  } else {
    fill(bgColor);
  }
  stroke(textColor);
  strokeWeight(1.5);
  rect(DivX[i], DivY[i], DivWidth[i], DivHeight[i]); // sharp corners

  // Auto-fit text
  float testFontSize = fontSize[i];
  DivFont[i] = createFont(fontNames[i], testFontSize);
  textFont(DivFont[i], testFontSize);
  textAlign(CENTER, CENTER);

  while(textWidth(DivText[i]) > DivWidth[i] - 2*padding){
    testFontSize *= 0.95;
    DivFont[i] = createFont(fontNames[i], testFontSize);
    textFont(DivFont[i], testFontSize);
  }

  fill(textColor);
  text(DivText[i], DivX[i]+DivWidth[i]/2, DivY[i]+DivHeight[i]/2);
}

// ---------------------------
// Draw Lyrics Box
fill(bgColor);
stroke(panelColor);
strokeWeight(1.5);
rect(lyricsX, lyricsY, lyricsWidth, lyricsHeight);

float lyricsTestSize = 20;
lyricsFont = createFont("Segoe UI", lyricsTestSize);
textFont(lyricsFont, lyricsTestSize);
textAlign(LEFT, TOP);

while(textWidth(lyrics) > lyricsWidth - 2*padding || textAscent() + textDescent() > lyricsHeight - 2*padding){
  lyricsTestSize *= 0.95;
  lyricsFont = createFont("Segoe UI", lyricsTestSize);
  textFont(lyricsFont, lyricsTestSize);
}

fill(textColor);
text(lyrics, lyricsX + padding, lyricsY + padding, lyricsWidth - 2*padding, lyricsHeight - 2*padding);

// ---------------------------
// Draw Time Boxes
for(int i=0; i<2; i++){
  fill(bgColor);
  stroke(panelColor);
  strokeWeight(1.5);
  rect(timeX[i], timeY[i], timeWidth[i], timeHeight[i]);

  float tf = 14;
  timeFont[i] = createFont("Segoe UI", tf);
  textFont(timeFont[i], tf);
  textAlign(CENTER, CENTER);
  fill(textColor);
  text(timeText[i], timeX[i]+timeWidth[i]/2, timeY[i]+timeHeight[i]/2);
}

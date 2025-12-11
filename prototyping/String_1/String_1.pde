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

DivX[0] = appWidth*1.2/16;   DivY[0] = appHeight*0/24;   DivWidth[0] = appWidth*4.8/16;  DivHeight[0] = appHeight*1/24;
DivX[1] = appWidth*12/16;    DivY[1] = appHeight*0/24;   DivWidth[1] = appWidth*2/16;    DivHeight[1] = appHeight*1/24;
DivX[2] = appWidth*1/16;     DivY[2] = appHeight*12/24;  DivWidth[2] = appWidth*6/16;    DivHeight[2] = appHeight*0.5/24;
DivX[3] = appWidth*3/16;     DivY[3] = appHeight*8.5/24; DivWidth[3] = appWidth*10/16;   DivHeight[3] = appHeight*2/24;
DivX[4] = appWidth*1/16;     DivY[4] = appHeight*11/24;  DivWidth[4] = appWidth*2.3/16;  DivHeight[4] = appHeight*1/24;

// DIV Text
String[] DivText = {"Website Name", "Account", "Maher Al Muaqily", "TITLE", "ABOUT"};

// Fonts
PFont[] DivFont = new PFont[numberOfDivs];
float[] fontSize = {35, 20, 25, 45, 18};
for(int i=0; i<numberOfDivs; i++){
  DivFont[i] = createFont("Segoe UI", fontSize[i]);
}

// Lyrics Box
float lyricsX = appWidth*1.5/16;
float lyricsY = appHeight*12.5/24;
float lyricsWidth = appWidth*10.4/16;
float lyricsHeight = appHeight*7/24;
String lyrics = "TBA";
PFont lyricsFont = createFont("Segoe UI", 20);

// Time Boxes
float[] timeX = { appWidth*6.3/16, appWidth*13/16 };
float[] timeY = { appHeight*21.8/24, appHeight*21.8/24 };
float[] timeWidth = { appWidth*1/16, appWidth*1/16 };
float[] timeHeight = { appHeight*0.5/24, appHeight*0.5/24 };
String[] timeText = {"TBA","TBA"};
PFont[] timeFont = { createFont("Segoe UI",14), createFont("Segoe UI",14) };

// ---------------------------
// Colors (Gold & Blue Palette)
color darkBlue    = #161F48;  // strong, calming blue
color metallicBlue= #284574;  // secondary panel
color goldAccent1 = #E1C582;  // main gold accent
color goldAccent2 = #D2A047;  // deeper gold accent
color creamBg     = #F4F2C9;  // soft, light background
color textColor   = darkBlue;

// ---------------------------
// Draw DIVs
for(int i=0; i<numberOfDivs; i++){
  if(i == 1 || i == 3){ // Account & TITLE
    fill(metallicBlue);
  } else {
    fill(creamBg);
  }
  noStroke();
  rect(DivX[i], DivY[i], DivWidth[i], DivHeight[i], 12);

  fill(textColor);
  textFont(DivFont[i], fontSize[i]);
  if(i == 1 || i == 3) textAlign(CENTER, CENTER);
  else textAlign(LEFT, CENTER);
  text(DivText[i], DivX[i], DivY[i], DivWidth[i], DivHeight[i]);
}

// Lyrics Box
fill(goldAccent1);
rect(lyricsX, lyricsY, lyricsWidth, lyricsHeight, 12);
fill(textColor);
textFont(lyricsFont, 20);
textAlign(LEFT, TOP);
text(lyrics, lyricsX+10, lyricsY+10, lyricsWidth-20, lyricsHeight-20);

// Time Boxes
for(int i=0;i<2;i++){
  fill(goldAccent2);
  rect(timeX[i], timeY[i], timeWidth[i], timeHeight[i], 8);
  fill(textColor);
  textFont(timeFont[i], 14);
  textAlign(CENTER, CENTER);
  text(timeText[i], timeX[i], timeY[i], timeWidth[i], timeHeight[i]);
}

// -------------------- APP SIZE --------------------
fullScreen();
float appWidth = displayWidth;
float appHeight = displayHeight;

// -------------------- STATE --------------------
boolean nightMode = false;
boolean playButtonState = false; // toggle play/pause

// -------------------- BUTTON DIVS --------------------
void DIVs() {
  previousDIV();
  playDIV();
}

// Previous Button DIV
void previousDIV() {
  rect(appWidth * 1/16, appHeight * 20.4/24, appWidth * 1.4/16, appHeight * 2.5/24);
}

// Play Button DIV
void playDIV() {
  rect(appWidth * 2.4/16, appHeight * 20.4/24, appWidth * 1.9/16, appHeight * 2.5/24);
}

// -------------------- BUTTON SYMBOLS --------------------
void previousSymbol() {
  float x = appWidth * 1/16;
  float y = appHeight * 20.4/24;
  float w = appWidth * 1.4/16;
  float h = appHeight * 2.5/24;
  
  rect(x + w*1/4, y + h*1/4, w*1/8, h*1/2); // vertical bar
  triangle(x + w*3/8, y + h/2, x + w*3/4, y + h*1/4, x + w*3/4, y + h*3/4);
}

void playSymbol() {
  float x = appWidth * 2.4/16;
  float y = appHeight * 20.4/24;
  float w = appWidth * 1.9/16;
  float h = appHeight * 2.5/24;
  
  triangle(x + w*1/4, y + h*1/4, x + w*1/4, y + h*3/4, x + w*3/4, y + h*1/2);
}

// -------------------- BUTTON STATES --------------------
void previousButtonActive() {
  fill(color(0,150,255));
  previousDIV();
  fill(color(50));
  previousSymbol();
}

void previousButtonRegular() {
  fill(nightMode ? 50 : 200);
  previousDIV();
  fill(nightMode ? 200 : 50);
  previousSymbol();
}

void playButtonActive() {
  fill(playButtonState ? color(0,255,100,100) : color(0,150,255));
  playDIV();
  fill(nightMode ? 200 : 50);
  playSymbol();
}

void playButtonRegular() {
  fill(nightMode ? 50 : 200);
  playDIV();
  fill(nightMode ? 200 : 50);
  playSymbol();
}

// -------------------- HOVER OVER DRAW --------------------
void hoverOver_draw() {
  // Previous Hover
  if(mouseX > appWidth*1/16 && mouseX < appWidth*2.4/16 && mouseY > appHeight*20.4/24 && mouseY < appHeight*23/24) {
    previousButtonActive();
  } else {
    previousButtonRegular();
  }
  
  // Play Hover
  if(mouseX > appWidth*2.4/16 && mouseX < appWidth*4.3/16 && mouseY > appHeight*20.4/24 && mouseY < appHeight*23/24) {
    if(!playButtonState) playButtonActive();
  } else {
    playButtonRegular();
    if(playButtonState) playButtonActive();
  }
}

// -------------------- MOUSE PRESSED --------------------
void mousePressed() {
  // Previous clicked
  if(mouseX > appWidth*1/16 && mouseX < appWidth*2.4/16 && mouseY > appHeight*20.4/24 && mouseY < appHeight*23/24) {
    println("Previous Pressed");
  }
  
  // Play clicked
  if(mouseX > appWidth*2.4/16 && mouseX < appWidth*4.3/16 && mouseY > appHeight*20.4/24 && mouseY < appHeight*23/24) {
    playButtonState = !playButtonState;
    println("Play Toggled: " + playButtonState);
  }
}

// -------------------- DRAW --------------------
void draw() {
  background(nightMode ? 20 : 220);
  hoverOver_draw();
}

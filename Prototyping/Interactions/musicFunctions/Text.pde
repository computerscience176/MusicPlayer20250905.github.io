// TEXT TAB - FIXED ArrayIndexOutOfBoundsException
// Only 4 text boxes (matches your DIVs) - NO INDEX 4!

String[] textLabels = {
  "Website Name",           // 0: websiteNameX,Y,W,H
  "Username Given",         // 1: accountX,Y,W,H  
  "Reciter: Maher Al Muaiqly", // 2: profileX,Y,W,H
  "TITLE"                   // 3: titleX,Y,W,H
  // REMOVED INDEX 4 - NO "ABOUT" (doesn't exist in divPopulation)
};

String[] fontNames = {"Segoe UI Bold", "Segoe UI", "Segoe UI", "Cambria Bold"};
float[] textSizes = {80, 60, 50, 90};  
PFont[] textFonts = new PFont[4];  // FIXED: length 4

void textSetup() {
  // Initialize ONLY 4 fonts (0-3)
  for (int i = 0; i < 4; i++) {  // FIXED: i < 4
    try {
      textFonts[i] = createFont(fontNames[i], textSizes[i]);
    } catch (Exception e) {
      textFonts[i] = createFont("Arial", textSizes[i]);
    }
  }
}

void textdraw() {
  fill(resetInkDay);  // YOUR charcoal color
  stroke(resetBackgroundDay);
  strokeWeight(1);
  
  // 1. WEBSITE NAME
  textAlign(CENTER, CENTER);
  sizeTextToDiv(0, websiteNameX, websiteNameY, websiteNameWidth, websiteNameHeight);
  text(textLabels[0], websiteNameX+websiteNameWidth/2, websiteNameY+websiteNameHeight/2);
  
  // 2. USERNAME
  sizeTextToDiv(1, accountX, accountY, accountWidth, accountHeight);
  text(textLabels[1], accountX+accountWidth/2, accountY+accountHeight/2);
  
  // 3. RECITER - LEFT ALIGN
  textAlign(LEFT, CENTER);
  sizeTextToDiv(2, profileX, profileY, profileWidth, profileHeight);
  text(textLabels[2], profileX+20, profileY+profileHeight/2);
  
  // 4. TITLE
  textAlign(CENTER, CENTER);
  sizeTextToDiv(3, titleX, titleY, titleWidth, titleHeight);
  text(textLabels[3], titleX+titleWidth/2, titleY+titleHeight/2);
}

void sizeTextToDiv(int index, float x, float y, float w, float h) {
  // SAFETY CHECK - NO MORE CRASHES
  if (index < 0 || index >= textLabels.length || textFonts[index] == null) return;
  
  textFont(textFonts[index], textSizes[index]);
  while (textWidth(textLabels[index]) > w-40 && textSizes[index] > 12) {
    textSizes[index] *= 0.95;
    textFont(textFonts[index], textSizes[index]);
  }
}

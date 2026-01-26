// ================= TEXT SUBPROGRAM =================

// ---- TEXT STRINGS ----
String websiteText = "Website Name";
String usernameText = "Username Given";
String aboutText = "ABOUT";
String titleText = "AL-FATIHA"; // default song title
String reciterText = "Reciter: Maher Al Muaiqly";
String timeCurrentText = "0:00";
String timeTotalText = "5:30";

// ---- FONTS ----
String[] fontNames = {"Segoe UI Bold", "Segoe UI", "Segoe UI", "Cambria Bold"};
PFont[] textFonts = new PFont[4];
float[] fontSizes = {80, 60, 50, 90}; // initial sizes for website, username, reciter, title

// ---- SETUP ----
void textSetup() {
  for (int i = 0; i < 4; i++) {
    try {
      textFonts[i] = createFont(fontNames[i], fontSizes[i]);
    } catch (Exception e) {
      textFonts[i] = createFont("Arial", fontSizes[i]);
    }
  }
}

// ---- DRAW TEXT ----
void textdraw() {
  fill(blackC); // black text for all

  // --- Website Name (CENTER) ---
  textAlign(CENTER, BASELINE);
  autoFitText(websiteText, textFonts[0], fontSizes[0], websiteNameX, websiteNameY, websiteNameWidth, websiteNameHeight, true);

  // --- Username (LEFT) ---
  textAlign(LEFT, BASELINE);
  autoFitText(usernameText, textFonts[1], fontSizes[1], accountX, accountY, accountWidth, accountHeight, false);

  // --- About (CENTER) ---
  textAlign(CENTER, BASELINE);
  autoFitText(aboutText, textFonts[1], fontSizes[1], aboutX, aboutY, aboutWidth, aboutHeight, true);

  // --- Title (CENTER) ---
  textAlign(CENTER, BASELINE);
  autoFitText(titleText, textFonts[3], fontSizes[3], titleX, titleY, titleWidth, titleHeight, true);

  // --- Reciter (LEFT) ---
  textAlign(LEFT, BASELINE);
  autoFitText(reciterText, textFonts[2], fontSizes[2], byX, byY, byWidth, byHeight, false);

  // --- Time Current (LEFT) ---
  //textAlign(LEFT, BASELINE);
  //autoFitText(timeCurrentText, textFonts[1], fontSizes[1], time1X, time1Y, time1Width, time1Height, false);

  // --- Time Total (LEFT) ---
  //textAlign(LEFT, BASELINE);
  //autoFitText(timeTotalText, textFonts[1], fontSizes[1], time2X, time2Y, time2Width, time2Height, false);
}

// ---- AUTO-FIT FUNCTION ----
void autoFitText(String txt, PFont font, float startSize, float x, float y, float w, float h, boolean centerX) {
  float paddingX = 8; // horizontal padding
  float paddingY = 6; // vertical padding
  float size = startSize;
  float minSize = 8;
  textFont(font, size);
  int safety = 0;

  // Scale text to fit div with padding
  while ((textWidth(txt) > w - 2*paddingX || textAscent() + textDescent() > h - 2*paddingY) 
          && size > minSize && safety < 50) {
    size *= 0.95;
    textSize(size);
    safety++;
  }

  // Horizontal position
  float drawX;
  if (centerX) drawX = x + w / 2;      // center text in div
  else drawX = x + paddingX;           // left-align with padding

  // Vertical position (top + padding + ascent)
  float drawY = y + paddingY + textAscent();

  text(txt, drawX, drawY);
}

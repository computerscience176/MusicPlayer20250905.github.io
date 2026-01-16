void colourPopulation() {
  nightModeVariables();
  buildingColours();
} //End Colour Population
//
void nightModeVariables() {
  if (nightMode == false) {
    nightMode = true;
  } else {
    nightMode = false;
  }
} //End Night Mode Variables
//
void buildingColours() {
  //CANVAS: default background and ink
  resetBackgroundDay = #F5F5F5;  // Canvas background
  resetInkDay = charcoal;         // Ink / text
  resetBackgroundNight = #121212; 
  resetInkNight = #E5E7EB;        // Light ink for night

  //Button Colours: layering local variables leads to preferences controlled by Booleans
  softNavy = #1E3A8A;     // Play button normal
  lightBlue = #3B82F6;    // Play button hover
  offWhite = #E5E7EB;     // Play triangle
  cream = #FFF7E6;        // Quit button normal
  boldRed = #EF4444;      // Quit button hover

  //Night Mode Logic
  if ( nightMode == true ) {
    resetBackground = resetBackgroundNight;
    resetInk = resetInkNight;
    playColourBackground = softNavy;
    playColourSymbol = offWhite;
    playColourBackgroundActivated = lightBlue;
    playColourSymbolActivated = white;
    quitBackground = cream;
    quitBackgroundActivated = boldRed;
    quitButtonInk = white;
  } else {
    //Day Mode
    resetBackground = resetBackgroundDay;
    resetInk = resetInkDay;
    playColourBackground = softNavy;
    playColourSymbol = offWhite;
    playColourBackgroundActivated = lightBlue;
    playColourSymbolActivated = white;
    quitBackground = cream;
    quitBackgroundActivated = boldRed;
    quitButtonInk = charcoal;
  }
} //End Building Colours
//
//End Colour Population

<<<<<<< HEAD
/* Global Variables
 * All global variable declarations for the Music Player
 */

// ==================== APP SIZE ====================
int appWidth, appHeight;

// ==================== STATE VARIABLES ====================
boolean nightMode = false;
boolean playButtonState = false;

// ==================== MUSIC VARIABLES ====================
Minim minim;
int numberOfSongs = 3;
int numberOfSoundEffects = 1;
AudioPlayer[] playList = new AudioPlayer[numberOfSongs];
AudioPlayer[] soundEffects = new AudioPlayer[numberOfSoundEffects];
AudioMetaData[] playListMetaData = new AudioMetaData[numberOfSongs];
int currentSong = 0;

// ==================== IMAGE VARIABLES ====================
int numberOfImages = 3;
int imageIndex = 1; // Current image index
PImage[] songImages = new PImage[numberOfImages];

// Image DIV dimensions
float pictureDivX, pictureDivY, pictureDivWidth, pictureDivHeight;
float[] imageWidthAdjusted = new float[numberOfImages];
float[] imageHeightAdjusted = new float[numberOfImages];

// ==================== UI LAYOUT DIVS ====================

// Top Panel
float topPanelX, topPanelY, topPanelWidth, topPanelHeight;
float logoX, logoY, logoWidth, logoHeight;
float websiteNameX, websiteNameY, websiteNameWidth, websiteNameHeight;
float profileX, profileY, profileWidth, profileHeight;
float accountX, accountY, accountWidth, accountHeight;

// Search
float searchX, searchY, searchWidth, searchHeight;
float searchIconX, searchIconY, searchIconWidth, searchIconHeight;

// Three-dot menu
float threeX, threeY, threeWidth, threeHeight;

// Main Content
float imageX, imageY, imageWidth, imageHeight;
float titleX, titleY, titleWidth, titleHeight;
float textboxX, textboxY, textboxWidth, textboxHeight;
float aboutX, aboutY, aboutWidth, aboutHeight;
float byX, byY, byWidth, byHeight;
float lyricsX, lyricsY, lyricsWidth, lyricsHeight;

// Icon Box (Right Side)
float iconBoxX, iconBoxY, iconBoxWidth, iconBoxHeight;
float arabicX, arabicY, arabicWidth, arabicHeight;
float englishX, englishY, englishWidth, englishHeight;
float notesX, notesY, notesWidth, notesHeight;
float playlistX, playlistY, playlistWidth, playlistHeight;
float volumeX, volumeY, volumeWidth, volumeHeight;
float customizeX, customizeY, customizeWidth, customizeHeight;
float addX, addY, addWidth, addHeight;

// Control Panel (Bottom)
float rectanglearoundtimeX, rectanglearoundtimeY, rectanglearoundtimeWidth, rectanglearoundtimeHeight;
float previousX, previousY, previousWidth, previousHeight;
float playX, playY, playWidth, playHeight;
float forwardX, forwardY, forwardWidth, forwardHeight;

// Time Display
float timeBoxX, timeBoxY, timeBoxWidth, timeBoxHeight;
float timeX, timeY, timeWidth, timeHeight;
float time1X, time1Y, time1Width, time1Height;
float time2X, time2Y, time2Width, time2Height;

// More Buttons
float more1X, more1Y, more1Width, more1Height;
float more2X, more2Y, more2Width, more2Height;
float more3X, more3Y, more3Width, more3Height;

// ==================== BUTTON SYMBOLS ====================

// Triangle coordinates for buttons
float previousTriX1, previousTriY1, previousTriX2, previousTriY2, previousTriX3, previousTriY3;
float playTriX1, playTriY1, playTriX2, playTriY2, playTriX3, playTriY3;
float forwardTriX1, forwardTriY1, forwardTriX2, forwardTriY2, forwardTriX3, forwardTriY3;

// More button circles
float more1CircleX, more1CircleY, more1CircleDiameter;
float more2CircleX, more2CircleY, more2CircleDiameter;
float more3CircleX, more3CircleY, more3CircleDiameter;

// Add button plus sign
float addPadX, addPadY, addLeft, addRight, addTop, addBottom, addCenterX, addCenterY;
float addBarWidth, addBarHeight;

// Notes button inner rectangle
float notesInnerX, notesInnerY, notesInnerW, notesInnerH;
float triSize, notesLinePad;

// Customize star
float customizePadX, customizePadY, customizeCenterX, customizeCenterY;
float outerRadius, innerRadius;

// Search Icon circle
float searchPaddingX, searchPaddingY;
float circleX, circleY, circleDiameter;
float lineStartX, lineStartY, lineEndX, lineEndY;

// Playlist inner circle
float playlistPadding, playlistCircleX, playlistCircleY, playlistCircleDiameter;

// ==================== COLOR VARIABLES ====================

// Base colors
color blueMain, lightBlue, grey, whiteC, blackC, charcoal;

// Day/Night backgrounds and ink
color resetBackgroundDay, resetInkDay;
color resetBackgroundNight, resetInkNight;

// Button colors
color btnBackgroundDay, btnBackgroundNight;
color btnShapeDay, btnShapeNight;
color btnHoverBackgroundDay, btnHoverBackgroundNight;
color btnHoverShapeDay, btnHoverShapeNight;

// Special UI elements
color volumeBarDay, volumeBarNight;
color dropdownDay, dropdownNight;
color dropdownHoverDay, dropdownHoverNight;

// ==================== TEXT VARIABLES ====================

// Text content
String websiteText = "Quran Player";
String usernameText = "Username";
String aboutText = "ABOUT";
String titleText = "AL-FATIHA";
String reciterText = "Reciter: Maher Al Muaiqly";
String timeCurrentText = "0:00";
String timeTotalText = "5:30";

// Fonts
String[] fontNames = {"Segoe UI Bold", "Segoe UI", "Segoe UI", "Cambria Bold"};
PFont[] textFonts = new PFont[4];
float[] fontSizes = {80, 60, 50, 90};

// End Global Variables
=======
/* Global Variables
 * All global variable declarations for the Music Player
 */

// ==================== APP SIZE ====================
int appWidth, appHeight;

// ==================== STATE VARIABLES ====================
boolean nightMode = false;
boolean playButtonState = false;

// ==================== MUSIC VARIABLES ====================
Minim minim;
int numberOfSongs = 3;
int numberOfSoundEffects = 1;
AudioPlayer[] playList = new AudioPlayer[numberOfSongs];
AudioPlayer[] soundEffects = new AudioPlayer[numberOfSoundEffects];
AudioMetaData[] playListMetaData = new AudioMetaData[numberOfSongs];
int currentSong = 0;

// ==================== IMAGE VARIABLES ====================
int numberOfImages = 3;
int imageIndex = 1; // Current image index
PImage[] songImages = new PImage[numberOfImages];

// Image DIV dimensions
float pictureDivX, pictureDivY, pictureDivWidth, pictureDivHeight;
float[] imageWidthAdjusted = new float[numberOfImages];
float[] imageHeightAdjusted = new float[numberOfImages];

// ==================== UI LAYOUT DIVS ====================

// Top Panel
float topPanelX, topPanelY, topPanelWidth, topPanelHeight;
float logoX, logoY, logoWidth, logoHeight;
float websiteNameX, websiteNameY, websiteNameWidth, websiteNameHeight;
float profileX, profileY, profileWidth, profileHeight;
float accountX, accountY, accountWidth, accountHeight;

// Search
float searchX, searchY, searchWidth, searchHeight;
float searchIconX, searchIconY, searchIconWidth, searchIconHeight;

// Three-dot menu
float threeX, threeY, threeWidth, threeHeight;

// Main Content
float imageX, imageY, imageWidth, imageHeight;
float titleX, titleY, titleWidth, titleHeight;
float textboxX, textboxY, textboxWidth, textboxHeight;
float aboutX, aboutY, aboutWidth, aboutHeight;
float byX, byY, byWidth, byHeight;
float lyricsX, lyricsY, lyricsWidth, lyricsHeight;

// Icon Box (Right Side)
float iconBoxX, iconBoxY, iconBoxWidth, iconBoxHeight;
float arabicX, arabicY, arabicWidth, arabicHeight;
float englishX, englishY, englishWidth, englishHeight;
float notesX, notesY, notesWidth, notesHeight;
float playlistX, playlistY, playlistWidth, playlistHeight;
float volumeX, volumeY, volumeWidth, volumeHeight;
float customizeX, customizeY, customizeWidth, customizeHeight;
float addX, addY, addWidth, addHeight;

// Control Panel (Bottom)
float rectanglearoundtimeX, rectanglearoundtimeY, rectanglearoundtimeWidth, rectanglearoundtimeHeight;
float previousX, previousY, previousWidth, previousHeight;
float playX, playY, playWidth, playHeight;
float forwardX, forwardY, forwardWidth, forwardHeight;

// Time Display
float timeBoxX, timeBoxY, timeBoxWidth, timeBoxHeight;
float timeX, timeY, timeWidth, timeHeight;
float time1X, time1Y, time1Width, time1Height;
float time2X, time2Y, time2Width, time2Height;

// More Buttons
float more1X, more1Y, more1Width, more1Height;
float more2X, more2Y, more2Width, more2Height;
float more3X, more3Y, more3Width, more3Height;

// ==================== BUTTON SYMBOLS ====================

// Triangle coordinates for buttons
float previousTriX1, previousTriY1, previousTriX2, previousTriY2, previousTriX3, previousTriY3;
float playTriX1, playTriY1, playTriX2, playTriY2, playTriX3, playTriY3;
float forwardTriX1, forwardTriY1, forwardTriX2, forwardTriY2, forwardTriX3, forwardTriY3;

// More button circles
float more1CircleX, more1CircleY, more1CircleDiameter;
float more2CircleX, more2CircleY, more2CircleDiameter;
float more3CircleX, more3CircleY, more3CircleDiameter;

// Add button plus sign
float addPadX, addPadY, addLeft, addRight, addTop, addBottom, addCenterX, addCenterY;
float addBarWidth, addBarHeight;

// Notes button inner rectangle
float notesInnerX, notesInnerY, notesInnerW, notesInnerH;
float triSize, notesLinePad;

// Customize star
float customizePadX, customizePadY, customizeCenterX, customizeCenterY;
float outerRadius, innerRadius;

// Search Icon circle
float searchPaddingX, searchPaddingY;
float circleX, circleY, circleDiameter;
float lineStartX, lineStartY, lineEndX, lineEndY;

// Playlist inner circle
float playlistPadding, playlistCircleX, playlistCircleY, playlistCircleDiameter;

// ==================== COLOR VARIABLES ====================

// Base colors
color blueMain, lightBlue, grey, whiteC, blackC, charcoal;

// Day/Night backgrounds and ink
color resetBackgroundDay, resetInkDay;
color resetBackgroundNight, resetInkNight;

// Button colors
color btnBackgroundDay, btnBackgroundNight;
color btnShapeDay, btnShapeNight;
color btnHoverBackgroundDay, btnHoverBackgroundNight;
color btnHoverShapeDay, btnHoverShapeNight;

// Special UI elements
color volumeBarDay, volumeBarNight;
color dropdownDay, dropdownNight;
color dropdownHoverDay, dropdownHoverNight;

// ==================== TEXT VARIABLES ====================

// Text content
String websiteText = "Quran Player";
String usernameText = "Username";
String aboutText = "ABOUT";
String titleText = "AL-FATIHA";
String reciterText = "Reciter: Maher Al Muaiqly";
String timeCurrentText = "0:00";
String timeTotalText = "5:30";

// Fonts
String[] fontNames = {"Segoe UI Bold", "Segoe UI", "Segoe UI", "Cambria Bold"};
PFont[] textFonts = new PFont[4];
float[] fontSizes = {80, 60, 50, 90};

// End Global Variables
>>>>>>> a9c81e9804f784f831fab4caab282e67cecf8aee

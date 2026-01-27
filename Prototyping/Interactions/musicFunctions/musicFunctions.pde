/* Music Player Application
 * Main Program File
 * Created: 2026
 * 
 * This program creates a full-featured music player with:
 * - Play/Pause/Stop/Forward/Previous controls
 * - Volume control
 * - Playlist management
 * - Song metadata display
 * - Night/Day mode toggle
 * - Album artwork display
 */

// Library - Minim
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

// Global Variables - See GlobalVariables.pde for all declarations

void setup() {
  // Display CANVAS
  fullScreen(); // Uses displayWidth and displayHeight
  appWidth = displayWidth;
  appHeight = displayHeight;
  
  // ===== INSPECTION: Display Variables =====
  println("========================================");
  println("MUSIC PLAYER INITIALIZATION");
  println("========================================");
  println("Display Width:", displayWidth);
  println("Display Height:", displayHeight);
  println("App Width:", appWidth);
  println("App Height:", appHeight);
  println("========================================");
  
  // Initialize all subprograms
  divPopulation();
  
  // ===== INSPECTION: DIV Variables (Sample) =====
  println("\n--- DIV VARIABLES INSPECTION ---");
  println("Previous Button DIV:");
  println("  X:", previousX, "Y:", previousY);
  println("  Width:", previousWidth, "Height:", previousHeight);
  println("Play Button DIV:");
  println("  X:", playX, "Y:", playY);
  println("  Width:", playWidth, "Height:", playHeight);
  println("Forward Button DIV:");
  println("  X:", forwardX, "Y:", forwardY);
  println("  Width:", forwardWidth, "Height:", forwardHeight);
  println("Volume Button DIV:");
  println("  X:", volumeX, "Y:", volumeY);
  println("  Width:", volumeWidth, "Height:", volumeHeight);
  println("---");
  
  nightMode = false;
  colourPopulation();
  
  // ===== INSPECTION: Color Variables =====
  println("\n--- COLOR POPULATION INSPECTION ---");
  println("Night Mode:", nightMode);
  println("Background Day:", hex(resetBackgroundDay));
  println("Background Night:", hex(resetBackgroundNight));
  println("Button Background Day:", hex(btnBackgroundDay));
  println("Button Shape Day:", hex(btnShapeDay));
  println("Button Hover Background Day:", hex(btnHoverBackgroundDay));
  println("---");
  
  musicSetup();
  
  // ===== INSPECTION: Music Array Loading =====
  println("\n--- MUSIC ARRAY INSPECTION ---");
  println("Number of Songs:", numberOfSongs);
  println("Current Song Index:", currentSong);
  for (int i = 0; i < numberOfSongs; i++) {
    if (playList[i] != null) {
      println("Song", i, "- Loaded:", playList[i].getMetaData().fileName());
    } else {
      println("Song", i, "- ERROR: Not loaded");
    }
  }
  println("Sound Effects Loaded:", (soundEffects[0] != null ? "Yes" : "No"));
  println("---");
  
  textSetup();
  
  // ===== INSPECTION: Font Array Loading =====
  println("\n--- FONT ARRAY INSPECTION ---");
  for (int i = 0; i < textFonts.length; i++) {
    if (textFonts[i] != null) {
      println("Font", i, "- Name:", fontNames[i], "Size:", fontSizes[i]);
    }
  }
  println("---");
  
  imageSetup();
  
  // ===== INSPECTION: Image Array Loading =====
  println("\n--- IMAGE ARRAY INSPECTION ---");
  println("Number of Images:", numberOfImages);
  println("Current Image Index:", imageIndex);
  for (int i = 0; i < numberOfImages; i++) {
    if (songImages[i] != null) {
      println("Image", i, "- Width:", songImages[i].width, "Height:", songImages[i].height);
      println("  Adjusted Width:", imageWidthAdjusted[i], "Height:", imageHeightAdjusted[i]);
    }
  }
  println("---");
  
  // Load metadata for all songs
  for (int i = 0; i < numberOfSongs; i++) {
    playListMetaData[i] = playList[i].getMetaData();
  }
  
  // ===== INSPECTION: Metadata Inspection =====
  println("\n--- METADATA INSPECTION ---");
  println("Current Song Metadata:");
  if (playListMetaData[currentSong] != null) {
    println("  Title:", playListMetaData[currentSong].title());
    println("  Author:", playListMetaData[currentSong].author());
    println("  Length:", playListMetaData[currentSong].length(), "ms");
    println("  Album:", playListMetaData[currentSong].album());
  }
  println("---");
  
  println("\n========================================");
  println("Music Player Initialized Successfully");
  println("Press M for Night Mode");
  println("Press P to Play, O to Pause");
  println("Press N for Next, B for Previous");
  println("Click buttons or check keyboard shortcuts");
  println("========================================\n");
} // End setup

void draw() {
  // Set background based on night mode
  background(nightMode ? resetBackgroundNight : resetBackgroundDay);
  
  // Draw all UI elements
  divPopulation();
  drawButtons();
  textdraw();
  
  // Update time display if song is playing
  if (playList[currentSong].isPlaying()) {
    updateTimeDisplay();
  }
  
  // Debug: Uncomment to see mouse position
  // println("Mouse Position:", mouseX, mouseY);
} // End draw

void mousePressed() {
  buttonMousePressed();
} // End mousePressed

void keyPressed() {
  /* Keyboard Shortcuts for Music Player
   * P/p - Play (with loop for double-tap)
   * O/o - Pause/Resume toggle
   * S/s - Stop (pause on first press, rewind on second)
   * L/l - Loop once
   * K/k - Loop infinitely
   * F/f - Fast forward (+10 seconds)
   * R/r - Rewind (-10 seconds)
   * W/w - Mute toggle
   * N/n - Next song
   * B/b - Previous song
   * Y/y - Random song
   * M/m - Toggle night mode
   * ESC - Exit application
   */
  
  // Play with loop (allows double-tap to restart)
  if (key == 'P' || key == 'p') {
    playList[currentSong].loop(0);
    playButtonState = true;
    println("Play pressed - Song playing");
  }
  
  // Pause/Resume toggle
  if (key == 'O' || key == 'o') {
    if (playList[currentSong].isPlaying()) {
      playList[currentSong].pause();
      playButtonState = false;
      println("Pause - Song paused");
    } else {
      playList[currentSong].play();
      playButtonState = true;
      println("Resume - Song playing");
    }
  }
  
  // Stop (pause then rewind on second press)
  if (key == 'S' || key == 's') {
    if (playList[currentSong].isPlaying()) {
      playList[currentSong].pause();
      playButtonState = false;
      println("Stop - Song paused");
    } else {
      playList[currentSong].rewind();
      println("Stop - Song rewound to start");
    }
  }
  
  // Loop controls
  if (key == 'L' || key == 'l') {
    playList[currentSong].loop(1); // Loop once
    println("Loop Once activated");
  }
  if (key == 'K' || key == 'k') {
    playList[currentSong].loop(); // Loop infinitely
    println("Loop Infinite activated");
  }
  
  // Skip controls (10 seconds)
  if (key == 'F' || key == 'f') {
    playList[currentSong].skip(10000); // Forward
    println("Fast Forward +10 seconds");
  }
  if (key == 'R' || key == 'r') {
    playList[currentSong].skip(-10000); // Rewind
    println("Rewind -10 seconds");
  }
  
  // Mute toggle
  if (key == 'W' || key == 'w') {
    if (playList[currentSong].isMuted()) {
      playList[currentSong].unmute();
      println("Unmuted");
    } else {
      playList[currentSong].mute();
      println("Muted");
    }
  }
  
  // Next song
  if (key == 'N' || key == 'n') {
    println("Next song requested");
    nextSong();
  }
  
  // Previous song
  if (key == 'B' || key == 'b') {
    println("Previous song requested");
    previousSong();
  }
  
  // Random song
  if (key == 'Y' || key == 'y') {
    int newSong = int(random(numberOfSongs));
    println("Random song selected:", newSong);
    changeSong(newSong);
  }
  
  // Toggle night mode
  if (key == 'M' || key == 'm') {
    nightMode = !nightMode;
    println("Night Mode:", nightMode ? "ON" : "OFF");
  }
  
  // Exit
  if (key == CODED || keyCode == ESC) {
    println("Exiting Music Player...");
    exit();
  }
} // End keyPressed

// Helper function to change songs
void changeSong(int newSongIndex) {
  boolean wasPlaying = playList[currentSong].isPlaying();
  
  // Stop current song
  if (playList[currentSong].isPlaying()) {
    playList[currentSong].pause();
  }
  playList[currentSong].rewind();
  
  // Change to new song
  currentSong = newSongIndex;
  println("Changed to song:", currentSong);
  
  // Update UI with new song info
  updateSongInfo();
  
  // Auto-play if previous song was playing
  if (wasPlaying) {
    playList[currentSong].play();
    println("Auto-playing new song");
  }
}

// Next song function
void nextSong() {
  int nextIndex = (currentSong + 1) % numberOfSongs;
  println("Next: Moving from song", currentSong, "to", nextIndex);
  changeSong(nextIndex);
}

// Previous song function
void previousSong() {
  int prevIndex = (currentSong - 1 + numberOfSongs) % numberOfSongs;
  println("Previous: Moving from song", currentSong, "to", prevIndex);
  changeSong(prevIndex);
}

// Update song information display
void updateSongInfo() {
  if (playListMetaData[currentSong] != null) {
    titleText = playListMetaData[currentSong].title();
    if (titleText == null || titleText.equals("")) {
      titleText = "Song " + (currentSong + 1);
    }
    
    String author = playListMetaData[currentSong].author();
    if (author != null && !author.equals("")) {
      reciterText = "Reciter: " + author;
    } else {
      reciterText = "Reciter: Unknown";
    }
    
    println("Updated song info - Title:", titleText);
    println("                     Author:", reciterText);
  }
}

// Update time display
void updateTimeDisplay() {
  int currentTime = playList[currentSong].position();
  int totalTime = playList[currentSong].length();
  
  timeCurrentText = formatTime(currentTime);
  timeTotalText = formatTime(totalTime);
}

// Format milliseconds to MM:SS
String formatTime1(int millis) {
  int seconds = millis / 1000;
  int minutes = seconds / 60;
  seconds = seconds % 60;
  return nf(minutes, 1) + ":" + nf(seconds, 2);
}

// End Main Program
/* Music Player Application
 * Main Program File
 * Created: 2026
 * 
 * This program creates a full-featured music player with:
 * - Play/Pause/Stop/Forward/Previous controls
 * - Volume control
 * - Playlist management
 * - Song metadata display
 * - Night/Day mode toggle
 * - Album artwork display
 */

// Library - Minim
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

// Global Variables - See GlobalVariables.pde for all declarations

void setup() {
  // Display CANVAS
  fullScreen(); // Uses displayWidth and displayHeight
  appWidth = displayWidth;
  appHeight = displayHeight;
  
  // Initialize all subprograms
  divPopulation();
  nightMode = false;
  colourPopulation();
  musicSetup();
  textSetup();
  imageSetup();
  
  // Load metadata for all songs
  for (int i = 0; i < numberOfSongs; i++) {
    playListMetaData[i] = playList[i].getMetaData();
  }
  
  println("Music Player Initialized Successfully");
  println("Number of Songs:", numberOfSongs);
  println("Canvas Size:", appWidth, "x", appHeight);
} // End setup

void draw() {
  // Set background based on night mode
  background(nightMode ? resetBackgroundNight : resetBackgroundDay);
  
  // Draw all UI elements
  divPopulation();
  drawButtons();
  textdraw();
  
  // Update time display if song is playing
  if (playList[currentSong].isPlaying()) {
    updateTimeDisplay();
  }
  
  // Debug: Uncomment to see mouse position
  // println("Mouse Position:", mouseX, mouseY);
} // End draw

void mousePressed() {
  buttonMousePressed();
} // End mousePressed

void keyPressed() {
  /* Keyboard Shortcuts for Music Player
   * P/p - Play (with loop for double-tap)
   * O/o - Pause/Resume toggle
   * S/s - Stop (pause on first press, rewind on second)
   * L/l - Loop once
   * K/k - Loop infinitely
   * F/f - Fast forward (+10 seconds)
   * R/r - Rewind (-10 seconds)
   * W/w - Mute toggle
   * N/n - Next song
   * B/b - Previous song
   * Y/y - Random song
   * M/m - Toggle night mode
   * ESC - Exit application
   */
  
  // Play with loop (allows double-tap to restart)
  if (key == 'P' || key == 'p') {
    playList[currentSong].loop(0);
    playButtonState = true;
  }
  
  // Pause/Resume toggle
  if (key == 'O' || key == 'o') {
    if (playList[currentSong].isPlaying()) {
      playList[currentSong].pause();
      playButtonState = false;
    } else {
      playList[currentSong].play();
      playButtonState = true;
    }
  }
  
  // Stop (pause then rewind on second press)
  if (key == 'S' || key == 's') {
    if (playList[currentSong].isPlaying()) {
      playList[currentSong].pause();
      playButtonState = false;
    } else {
      playList[currentSong].rewind();
    }
  }
  
  // Loop controls
  if (key == 'L' || key == 'l') playList[currentSong].loop(1); // Loop once
  if (key == 'K' || key == 'k') playList[currentSong].loop(); // Loop infinitely
  
  // Skip controls (10 seconds)
  if (key == 'F' || key == 'f') playList[currentSong].skip(10000); // Forward
  if (key == 'R' || key == 'r') playList[currentSong].skip(-10000); // Rewind
  
  // Mute toggle
  if (key == 'W' || key == 'w') {
    if (playList[currentSong].isMuted()) {
      playList[currentSong].unmute();
    } else {
      playList[currentSong].mute();
    }
  }
  
  // Next song
  if (key == 'N' || key == 'n') {
    nextSong();
  }
  
  // Previous song
  if (key == 'B' || key == 'b') {
    previousSong();
  }
  
  // Random song
  if (key == 'Y' || key == 'y') {
    int newSong = int(random(numberOfSongs));
    changeSong(newSong);
  }
  
  // Toggle night mode
  if (key == 'M' || key == 'm') {
    nightMode = !nightMode;
    println("Night Mode:", nightMode ? "ON" : "OFF");
  }
  
  // Exit
  if (key == CODED || keyCode == ESC) exit();
} // End keyPressed

// Helper function to change songs
void changeSong(int newSongIndex) {
  boolean wasPlaying = playList[currentSong].isPlaying();
  
  // Stop current song
  if (playList[currentSong].isPlaying()) {
    playList[currentSong].pause();
  }
  playList[currentSong].rewind();
  
  // Change to new song
  currentSong = newSongIndex;
  
  // Update UI with new song info
  updateSongInfo();
  
  // Auto-play if previous song was playing
  if (wasPlaying) {
    playList[currentSong].play();
  }
}

// Next song function
void nextSong() {
  int nextIndex = (currentSong + 1) % numberOfSongs;
  changeSong(nextIndex);
}

// Previous song function
void previousSong() {
  int prevIndex = (currentSong - 1 + numberOfSongs) % numberOfSongs;
  changeSong(prevIndex);
}

// Update song information display
void updateSongInfo() {
  if (playListMetaData[currentSong] != null) {
    titleText = playListMetaData[currentSong].title();
    if (titleText == null || titleText.equals("")) {
      titleText = "Song " + (currentSong + 1);
    }
    
    String author = playListMetaData[currentSong].author();
    if (author != null && !author.equals("")) {
      reciterText = "Reciter: " + author;
    } else {
      reciterText = "Reciter: Unknown";
    }
  }
}

// Update time display
void updateTimeDisplay() {
  int currentTime = playList[currentSong].position();
  int totalTime = playList[currentSong].length();
  
  timeCurrentText = formatTime(currentTime);
  timeTotalText = formatTime(totalTime);
}

// Format milliseconds to MM:SS
String formatTime1(int millis) {
  int seconds = millis / 1000;
  int minutes = seconds / 60;
  seconds = seconds % 60;
  return nf(minutes, 1) + ":" + nf(seconds, 2);
}

// End Main Program
>>>>>>> a9c81e9804f784f831fab4caab282e67cecf8aee

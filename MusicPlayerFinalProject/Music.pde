/* Music Subprogram
 * Handles music loading, playback, and audio setup
 */

void musicSetup() {
  // Music Loading - STRUCTURED Review
  minim = new Minim(this); // Mandatory initialization
  
  String upArrow = "../../";
  String musicFolder = "Music/"; // Developer Specific
  
  // Song file names
  String[] songName = new String[numberOfSongs];
  songName[0] = "001";
  songName[1] = "002";
  songName[2] = "003";
  
  // Sound effect names
  String soundEffect1 = "soundeffect";
  String fileExtension_mp3 = ".mp3";
  
  String musicDirectory = upArrow + musicFolder; // Concatenation
  String file; // Temporary variable for file path
  
  // Load all songs into playlist
  println("Loading songs...");
  for (int i = 0; i < numberOfSongs; i++) {
    file = musicDirectory + songName[i] + fileExtension_mp3;
    playList[i] = minim.loadFile(file);
    
    // Verify song loaded successfully
    if (playList[i] == null) {
      println("ERROR: Song", i, "failed to load from:", file);
    } else {
      println("✓ Song", i, "loaded:", songName[i]);
    }
  }
  
  // Load sound effects
  currentSong = 0;
  file = musicDirectory + soundEffect1 + fileExtension_mp3;
  soundEffects[currentSong] = minim.loadFile(file);
  
  if (soundEffects[currentSong] == null) {
    println("ERROR: Sound effect failed to load from:", file);
  } else {
    println("✓ Sound effect loaded");
  }
  
  // Final error check
  for (int i = 0; i < numberOfSongs; i++) {
    if (playList[i] == null || soundEffects[0] == null) {
      println("⚠ MUSIC LOADING ERROR DETECTED ⚠");
      println("Music Pathway:", musicDirectory);
      println("Full Music File Pathway:", file);
      printArray(playList);
      printArray(soundEffects);
      println("Please check your music files and file paths.");
    }
  }
  
  // Reset current song to first song
  currentSong = 0;
  
  println("Music setup complete!");
} // End musicSetup

// ==================== MUSIC METADATA ====================

void testMetaData() {
  /* Test function to print all available metadata for current song
   * Useful for debugging and seeing what information is available
   */
  println();
  println("========== METADATA FOR SONG", currentSong, "==========");
  println("File Name: " + playListMetaData[currentSong].fileName());
  println("Length (in milliseconds): " + playListMetaData[currentSong].length());
  println("Title: " + playListMetaData[currentSong].title());
  println("Author: " + playListMetaData[currentSong].author());
  println("Album: " + playListMetaData[currentSong].album());
  println("Date: " + playListMetaData[currentSong].date());
  println("Comment: " + playListMetaData[currentSong].comment());
  println("Lyrics: " + playListMetaData[currentSong].lyrics());
  println("Track: " + playListMetaData[currentSong].track());
  println("Genre: " + playListMetaData[currentSong].genre());
  println("Copyright: " + playListMetaData[currentSong].copyright());
  println("Disc: " + playListMetaData[currentSong].disc());
  println("Composer: " + playListMetaData[currentSong].composer());
  println("Orchestra: " + playListMetaData[currentSong].orchestra());
  println("Publisher: " + playListMetaData[currentSong].publisher());
  println("Encoded: " + playListMetaData[currentSong].encoded());
  println("==========================================");
} // End testMetaData

// ==================== MUSIC UTILITIES ====================

// Get current song position as formatted string
String getCurrentSongTime() {
  int position = playList[currentSong].position();
  return formatTime(position);
}

// Get total song length as formatted string
String getTotalSongTime() {
  int length = playList[currentSong].length();
  return formatTime(length);
}

// Format time from milliseconds to MM:SS
String formatTime(int millis) {
  int totalSeconds = millis / 1000;
  int minutes = totalSeconds / 60;
  int seconds = totalSeconds % 60;
  return nf(minutes, 1) + ":" + nf(seconds, 2);
}

// Get playback progress as percentage (0.0 to 1.0)
float getPlaybackProgress() {
  if (playList[currentSong].length() == 0) return 0;
  return float(playList[currentSong].position()) / float(playList[currentSong].length());
}

// Check if current song is playing
boolean isCurrentSongPlaying() {
  return playList[currentSong].isPlaying();
}

// Check if current song is muted
boolean isCurrentSongMuted() {
  return playList[currentSong].isMuted();
}

// End Music Subprogram

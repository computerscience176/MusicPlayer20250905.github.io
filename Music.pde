//Global Variables
Minim minim; // initates entire class
int numberOfSongs = 3; // Best Practice
int numberOfSoundEffects = 1; // Best Practice
AudioPlayer[] playList = new AudioPlayer[numberOfSongs];
AudioPlayer[] soundEffects = new AudioPlayer[numberOfSoundEffects];
int currentSong = numberOfSongs - numberOfSongs; // ZERO, Math Property
//
void musicSetup() {
  // Music Loading - STRUCTURED Review
  minim = new Minim(this); // Mandatory
  String upArrow = "../../../";
  String musicFolder = "Music/"; // Developer Specific
  //
  String[] songName = new String[numberOfSongs];
  songName[0] = "001";
  songName[1] = "002";
  songName[2] = "003";
  //
  String soundEffect1 = "soundeffect";
  String fileExtension_mp3 = ".mp3";
  //
  String musicDirectory = upArrow + musicFolder; // Concatenation
  String file; // TO BE rewritten and deleted once file is LOADED
  //
  for (int i = 0; i < numberOfSongs; i++) {
    file = musicDirectory + songName[i] + fileExtension_mp3;
    playList[currentSong] = minim.loadFile(file); // LOAD SONG
    currentSong++;
  } // End File Loading
  //
  currentSong = 0;
  file = musicDirectory + soundEffect1 + fileExtension_mp3; // Rewriting FILE
  soundEffects[currentSong] = minim.loadFile(file); // LOAD SOUND EFFECT
  //
  for (int i = 0; i < numberOfSongs; i++) {
    // ERROR Check Music and Sound Effect Variables
    if (playList[i] == null || soundEffects[currentSong] == null) {
      println("The Play List or Sound Effects did not load properly");
      println("Music Pathway:", musicDirectory);
      println("Full Music File Pathway:", file);
      printArray(playList);
      printArray(soundEffects);
    }
  }
}//end music setup

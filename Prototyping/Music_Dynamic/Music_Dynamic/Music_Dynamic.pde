/* Copied from  Music Static
 - Hearing Music and Sound Effects
 - Reading Code with CTRL-T & Braces
 - Global Variable V Local Variable, Garbage Collection
 */
//
// Library - Minim
// Reminder: activate the Library
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//
// Global Variables
Minim minim; // initates entire class
int numberOfSongs = 3; // Best Practice
int numberOfSoundEffects = 1; // Best Practice
AudioPlayer[] playList = new AudioPlayer[numberOfSongs];
AudioPlayer[] soundEffects = new AudioPlayer[numberOfSoundEffects];
int currentSong = numberOfSongs - numberOfSongs; // ZERO, Math Property
//
void setup() {
  // Display
  size(700, 500); // width // height
  // fullScreen(); // displayWidth // displayHeight
  int appWidth = width; // Best Practice
  int appHeight = height;
  //
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
} // End setup
//
void draw() {
} // End draw
//
void mousePressed() {
} // End Mouse Pressed
//
void keyPressed() {

  if (key == 'P' || key == 'p') playList[currentSong].loop(0);

  if (key == 'O' || key == 'o') {
    if (playList[currentSong].isPlaying()) {
      playList[currentSong].pause();
    } else {
      playList[currentSong].play();
    }
  }

  if (key == 'S' | key == 's') {
    if (playList[currentSong].isPlaying()) {
      playList[currentSong].pause();
    } else {
      playList[currentSong].rewind();
    }
  }

  if (key == 'L' || key == 'l') playList[currentSong].loop(1);
  if (key == 'K' || key == 'k') playList[currentSong].loop();
  if (key == 'F' || key == 'f') playList[currentSong].skip(10000);
  if (key == 'R' || key == 'r') playList[currentSong].skip(-10000);

  if (key == 'W' || key == 'w') {
    if (playList[currentSong].isMuted()) {
      playList[currentSong].unmute();
    } else {
      playList[currentSong].mute();
    }
  }

  if (key == CODED || keyCode == ESC) exit();
  if (key == 'Q' || key == 'q') exit();

  if (key == 'N' || key == 'n') {
    if (playList[currentSong].isPlaying()) {
      playList[currentSong].pause();
      playList[currentSong].rewind();
      if (currentSong == numberOfSongs - 1) {
        currentSong = 0;
      } else {
        currentSong++;
      }
      playList[currentSong].play();
    } else {
      playList[currentSong].rewind();
      if (currentSong == numberOfSongs - 1) {
        currentSong = 0;
      } else {
        currentSong++;
      }
    }
  }

  if (key == 'Y' || key == 'y') currentSong = int(random(numberOfSongs));
} // End Key Pressed
//
// End MAIN Program

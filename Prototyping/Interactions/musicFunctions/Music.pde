//Global Variables
Minim minim; //initiates entire class
int numberOfSongs = 3; //Best Practice
int numberOfSoundEffects = 1; //Best Practice
AudioPlayer[] playList = new AudioPlayer[ numberOfSongs ];
AudioPlayer[] soundEffects = new AudioPlayer[ numberOfSoundEffects];
int currentSong = numberOfSongs - numberOfSongs; //ZERO, Math Property
//
//Music Loading - STRUCTURED Review
minim = new Minim(this); //Mandatory
String upArrow = "../../../"; //3 folders up from sketch
String musicFolder = "Music/"; //Your folder
//
String [] song = new String [numberOfSongs];
 song[0] = "001";
 song[1]= "002";
 song[2] = "003";
String soundEffect1 = "soundeffect";
String fileExtension_mp3 = ".mp3";
//
String musicDirectory = upArrow + musicFolder; //Concatenation
String file = musicDirectory + song1 + fileExtension_mp3;
playList[ currentSong ] = minim.loadFile( file ); //Load first song

file = musicDirectory + soundEffect1 + fileExtension_mp3;
soundEffects[currentSong] = minim.loadFile( file ); //Load sound effect

//Load the other songs into the playlist
playList[1] = minim.loadFile(musicDirectory + song2 + fileExtension_mp3);
playList[2] = minim.loadFile(musicDirectory + song3 + fileExtension_mp3);
//
//ERROR Check Music and Sound Effect Variables
// ERROR CHECK - print each song and sound effect
for (int i = 0; i < playList.length; i++) {
  if (playList[i] != null) {
    println("Song " + i + " loaded successfully: " + playList[i]);
  } else {
    println("Song " + i + " FAILED to load!");
  }
}

for (int i = 0; i < soundEffects.length; i++) {
  if (soundEffects[i] != null) {
    println("Sound effect " + i + " loaded successfully: " + soundEffects[i]);
  } else {
    println("Sound effect " + i + " FAILED to load!");
  }
}
//
//Testing Sound
playList[currentSong].play(); //Deactivates void draw()
//soundEffects[currentSong].play(); //optional
} //End setup
//
void draw() {
  playList[currentSong].play(); //DRAW is deactivated by noLoop()
} //End draw
//
void mousePressed() {
} //End Mouse Pressed
//
void keyPressed() {
} //End Key Pressed
//
//End MAIN Program

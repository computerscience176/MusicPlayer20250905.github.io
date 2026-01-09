/* Hearing Music and Sound Effects
 - Reading Code with CTRL-T & Braces
 - Global Variable V Local Variable, Garbage Collection
 */
//
//Library - Minim
//Reminder: activate the Library
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//
//Global Variables
Minim minim; //initates entire class
int SongsNumber = 3; //Best Practice
int SoundEffectNumber = 1; //Best Practice
AudioPlayer[] Songs = new AudioPlayer[ SongsNumber ];
AudioPlayer[] soundEffects = new AudioPlayer[ SoundEffectNumber];
int currentSong = SongsNumber - SongsNumber; //ZERO, Math Property
//
void setup() {
  //Display
  size(900, 400); //width //height
  //fullScreen(); //displayWidth //displayHeight
  int appWidth = width; //Best Practice
  int appHeight = height;
  //
  //Music Loading - STRUCTURED Review
  minim = new Minim(this);
  String upArrow= "../";
  String MusicFolder= "Music/";
  String Fatiha= "001";
  String Baqarah= "002";
  String Aliimran= "003";
  String soundEffect1 = "soundeffect";
  String fileExtension_mp3= ".mp3";
  String fileExtension_wav= ".wav";
  //
  String musicDirectory = upArrow + MusicFolder;//concatination
  String soundEffectsDirectory = upArrow + MusicFolder; //Concatenation
  String file1 = musicDirectory + Fatiha +fileExtension_mp3;
  String file2 = musicDirectory + Baqarah +fileExtension_mp3;
  String file3 = musicDirectory + Aliimran +fileExtension_mp3;

  //println("Music Pathway:", musicDirectory);
  //println("Full Music File Pathway:", file1);
  // println("Full Music File Pathway:", file2);
  //println("Full Music File Pathway:", file3);
  //
  Songs[ currentSong ] = minim.loadFile( file1 ); //ERROR: Verify Spelling & Library installed, Sketch / Import Library
  String file4 = soundEffectsDirectory + soundEffect1 + fileExtension_wav; //Rewritting FILE
  soundEffects[currentSong] = minim.loadFile( file4 ); //ERROR: Verify Spelling & Library installed, Sketch / Import Library
  //
  //ERROR Check Music and Sound Effect Variables
  //ERROR Check Music and Sound Effect Variables
  //Thrown by commenting out FILE, Songs[] or soundEffects[]
  if ( Songs[currentSong]==null || soundEffects[currentSong]==null) { //ERROR, play list is NULL
    //See FILE or minim.loadFile
    println("The Play List or Sound Effects did not load properly");
    printArray(Songs);
    printArray(soundEffects);
    /*
  println("Music Pathway", musicDirectory);
     println("Full Music File Pathway", file);
     */
  } //End ERROR Check Music and Sound Effect Variables
  //
  //testing sound
 if (Songs[currentSong] != null) Songs[currentSong].play();
  //SoundEffect[currentSong].play();
  //
} //End setup
//
void draw() {
  //Songs [currentSong].play();//draw is activated by noLoop()
} //End draw
//
void mousePressed() {
} //End Mouse Pressed
//
void keyPressed() {
} //End Key Pressed
//
//End MAIN Program

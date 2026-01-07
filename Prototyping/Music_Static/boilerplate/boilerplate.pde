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
int SoundEffect = 1; //Best Practice
AudioPlayer[] Songs = new AudioPlayer[ SongsNumber ];
AudioPlayer[] soundEffects = new AudioPlayer[ SoundEffect];
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
  String upArrow= "../../";
  String MusicFolder= "Music/";
  String Fatiha= "001";
  String Baqarah= "002";
  String Aliimran= "003";
  String fileEntension_mp3= ".mp3";
  //
  String musicDirectory = upArrow + MusicFolder;//concatination
  String file1 = musicDirectory + Fatiha +fileEntension_mp3;
  String file2 = musicDirectory + Baqarah +fileEntension_mp3;
  String file3 = musicDirectory + Aliimran +fileEntension_mp3;
  println("Music Pathway:", musicDirectory);
  println("Full Music File Pathway:", file1);
  println("Full Music File Pathway:", file2);
  println("Full Music File Pathway:", file3);
  //
  Songs[ currentSong ] = minim.loadFile(file1);
  Songs[ 1 ] = minim.loadFile(file2);
  Songs[ 2 ] = minim.loadFile(file3);
  //
  //ERROR Check Music and Sound Effect Variables
  //Thrown by commenting out FILE, Songs[] or soundEffects[]
  if ( Songs[currentSong]==null || SoundEffect[currentSong]==null) { //ERROR, play list is NULL
    //See FILE or minim.loadFile
    println("The Play List or Sound Effects did not load properly");
    printArray(Songs);
    printArray(SoundEffect);
    /*
  println("Music Pathway", musicDirectory);
     println("Full Music File Pathway", file);
     */
  } //End ERROR Check Music and Sound Effect Variables
  //
  //testing sound
  Songs[currentSong].play();
  //SoundEffect[currentSong].play();
  //
} //End setup
//
void draw() {
} //End draw
//
void mousePressed() {
} //End Mouse Pressed
//
void keyPressed() {
} //End Key Pressed
//
//End MAIN Program

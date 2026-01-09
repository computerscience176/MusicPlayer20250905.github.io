/* Library Notes
  - File / Sketch / Import Library / Manage Libraries
  - We use Minim for Sound and Sound Effects
  - Able to Google-search libraries to make your project easier
  - Documentation: https://code.compartmental.net/minim/
  - Specific Class: https://code.compartmental.net/minim/audioplayer_class_audioplayer.html
  - Specific Class: https://code.compartmental.net/minim/audiometadata_class_audiometadata.html
  
  ** You are now able to research any Processing-Java Library ... or Any Java Library from the internet **
  - Processing-Java Libraries must be installed into the IDE
  - Java Libraries simply require the 'import' declaration
*/
//Library - Minim
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//
//Global Variables
Minim minim;//intiate a class
int SongsNumber = 3;//best practice
int SoundEffectNumber= 1;//best practice 
AudioPlayer[] playlist = new AudioPlayer[SongsNumber];
AudioPlayer[] SoundEffect = new AudioPlayer[SoundEffectNumber];
int currentsong= SongsNumber-SongsNumber;//zero, math property
//
//Display
size(900,400);//width //Height
//fullScreen();//diplayWidth //DisplayHeight
int appWidth= width;
int appHeight= height;
//
//Music Loading, Structured review= concatinate pathway
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
println("Music Pathway:" ,musicDirectory);
println("Full Music File Pathway:" ,file1);
println("Full Music File Pathway:" ,file2);
println("Full Music File Pathway:" ,file3);
//
playlist[ 0 ] = minim.loadFile(file1);
playlist[ 1 ] = minim.loadFile(file2);
playlist[ 2 ] = minim.loadFile(file3);
//
println("Did the music and sound load properly?");
printArray(playlist);
//
//Deal with Null

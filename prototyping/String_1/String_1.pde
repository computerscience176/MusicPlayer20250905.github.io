/*string
ONE
*/
//Display
fullScreen(); //Landscape
//size(1000, 500); 
int appWidth = displayWidth; //width
int appHeight = displayHeight; //height
//println("Display VARS:", "appWidth:"+appWidth, "appHeight:"+appHeight);
//println("\t\t\FullScreen, displayWidth:\t"+displayWidth, "\tdisplayHeight:\t"+displayHeight, "\n\t\t\t\tSize\t, width:\t\t"+width, "\theight:\t\t"+height);
//population

float aboutX = appWidth * 1/16;
float aboutY = appHeight * 11/24;
float aboutWidth = appWidth * 2.3/16;
float aboutHeight = appHeight * 1/24;
rect(aboutX, aboutY, aboutWidth, aboutHeight);
//
//Strings, Text, Literal
String about = "ABOUT";
/*
Website Name: To be determined
Profile: The name of the person of the account name
about: depends on audio, Al Imran, Baqarah, and Fatiha
By: The reciter
lyrcis and about: depends on audio
time1 and time2: the time played, and the lenghth of audio
*/
/*
println("Start of Console");
//fonts from OS
String[] fontList = PFont.list();//list all fonts availabe
printArray (fontList); //listing all possible fonts to choose, then creatFont
*/
float fontSize = appHeight ;//entire program one font size
PFont aboutFont; //font var name 
String Segoe = "Segoe UI";
aboutFont = createFont (Segoe, fontSize);
//Tools / Create Font / Find Font / Do Not Press "OK", known conflict between loadFont() and createFont()
//
println(fontSize, Segoe, aboutFont);
float fontSizeSegoe = 34.0;
println("Font Size:", fontSize);
/*Aspect Ratio manuplation - changes to varaibles
-chose aspect Ratio that must be multiplied : fontSize/titleHeight
-rewriting fontSize with formula
*/
float segoeAspectRatio = fontSizeSegoe/aboutHeight;
fontSize =  aboutHeight* segoeAspectRatio;
println(" Segoe UI Aspect Ratio:", segoeAspectRatio);
println();//skip one line
//
color goldInk = #003DA5 ; // (grey scale, 256), colour
color whiteInk = #FFFFFF ; //Grey Scale is 255
color resetInk = whiteInk;
fill(goldInk); //Ink, hexidecimal copied from Color Selector
//Grey Scale 0-255
textAlign (CENTER, TOP); //Align X&Y, see Processing.org / Reference
//Values: [LEFT | CENTER | RIGHT] & [TOP | CENTER | BOTTOM | BASELINE]
//
textFont(aboutFont, fontSize); //see variable note
//WHILE Error Check
//textFont() has option to combine font declaration with textSize()
//textFont() is better for more than one PFont Variable
//
text( about, aboutX, aboutY, aboutWidth, aboutHeight );
fill(resetInk);
//
//End Program

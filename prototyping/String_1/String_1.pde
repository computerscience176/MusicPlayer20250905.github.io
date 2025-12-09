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
float websiteNameX = appWidth * 1.2/16;
float websiteNameY = appHeight * 0/24;
float websiteNameWidth = appWidth * 4.8/16;
float websiteNameHeight = appHeight * 1/24;
rect(websiteNameX, websiteNameY, websiteNameWidth, websiteNameHeight);

float accountX = appWidth * 12/16;
float accountY = appHeight * 0/24;
float accountWidth = appWidth * 2/16;
float accountHeight = appHeight * 1/24;
rect(accountX, accountY, accountWidth, accountHeight);

float titleX = appWidth * 3/16;
float titleY = appHeight * 8.5/24;
float titleWidth = appWidth * 10/16;
float titleHeight = appHeight * 2/24;
rect(titleX, titleY, titleWidth, titleHeight);

float aboutX = appWidth * 1/16;
float aboutY = appHeight * 11/24;
float aboutWidth = appWidth * 2.3/16;
float aboutHeight = appHeight * 1/24;
rect(aboutX, aboutY, aboutWidth, aboutHeight);

float byX = appWidth * 1/16;
float byY = appHeight * 12/24;
float byWidth = appWidth * 6/16;
float byHeight = appHeight * 0.5/24;
rect(byX, byY, byWidth, byHeight);

float lyricsX = appWidth * 1.5/16;
float lyricsY = appHeight * 12.5/24;
float lyricsWidth = appWidth * 10.4/16;
float lyricsHeight = appHeight * 7/24;
rect(lyricsX, lyricsY, lyricsWidth, lyricsHeight);

float time1X = appWidth * 6.3/16;
float time1Y = appHeight * 21.8/24;
float time1Width = appWidth * 1/16;
float time1Height = appHeight * 0.5/24;
rect(time1X, time1Y, time1Width, time1Height);

float time2X = appWidth * 13/16;
float time2Y = appHeight * 21.8/24;
float time2Width = appWidth * 1/16;
float time2Height = appHeight * 0.5/24;
rect(time2X, time2Y, time2Width, time2Height);

//
//Strings, Text, Literal
String websiteName = "Website Name";
String account = "Account";
String title = "TITLE";
String about = "ABOUT";
String by = "Maher Al Muaqily";
String lyrics = "TBA";
String time1 = "TBA";
String time2 = "TBA";
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
PFont websiteNameFont; //font var name 
PFont byFont; //font var name 
PFont titleFont; //font var name 
PFont accountFont; //font var name 
String Segoe = "Segoe UI";
aboutFont = createFont (Segoe, fontSize);
websiteNameFont = createFont (Segoe, fontSize);
byFont = createFont (Segoe, fontSize);
titleFont = createFont (Segoe, fontSize);
accountFont = createFont (Segoe, fontSize);

//Tools / Create Font / Find Font / Do Not Press "OK", known conflict between loadFont() and createFont()
//
println(fontSize, Segoe, aboutFont);
println(fontSize, Segoe, websiteNameFont);
println(fontSize, Segoe, accountFont);
println(fontSize, Segoe, titleFont);
println(fontSize, Segoe, byFont);
float fontSizeSegoe = 15.0;
println("Font Size:", fontSize);
/*Aspect Ratio manuplation - changes to varaibles
-chose aspect Ratio that must be multiplied : fontSize/titleHeight
-rewriting fontSize with formula
*/
float segoeAspectRatio = fontSizeSegoe/aboutHeight;
fontSize =  aboutHeight* segoeAspectRatio;
float segoe1AspectRatio = fontSizeSegoe/websiteNameHeight;
fontSize =  websiteNameHeight* segoeAspectRatio;
float segoe2AspectRatio = fontSizeSegoe/titleHeight;
fontSize =  titleHeight* segoeAspectRatio;
float segoe3AspectRatio = fontSizeSegoe/byHeight;
fontSize =  byHeight* segoeAspectRatio;
float sego4eAspectRatio = fontSizeSegoe/accountHeight;
fontSize =  accountHeight* segoeAspectRatio;
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
textFont(titleFont, fontSize);
textFont(byFont, fontSize);
textFont(accountFont, fontSize);
textFont(websiteNameFont, fontSize);
//WHILE Error Check
//textFont() has option to combine font declaration with textSize()
//textFont() is better for more than one PFont Variable
//
text( about, aboutX, aboutY, aboutWidth, aboutHeight );
text( title, titleX, titleY, titleWidth, titleHeight );
text( account, accountX, accountY, accountWidth, accountHeight );
text( by, byX, byY, byWidth, byHeight );
text( websiteName, websiteNameX, websiteNameY, websiteNameWidth, websiteNameHeight );
fill(resetInk);
//
//End Program

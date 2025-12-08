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
//
//Strings, Text, Literal
String about = "About";
/*
Website Name: To be determined
Profile: The name of the person of the account name
Title: depends on audio, Al Imran, Baqarah, and Fatiha
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
float fontSize = 45.0 ;//entire program one font size
PFont titleFont; //font var name 
String Segoe = "Segoe UI";
titleFont = createFont (Segoe, fontSize);
//Tools / Create Font / Find Font / Do Not Press "OK", known conflict between loadFont() and createFont()
//
println(fontSize, Segoe, titleFont);

//
fill(#1A3B5D);
rect(aboutX, aboutY, aboutWidth, aboutHeight);
//
color goldInk = #FFFFFF ;//hexadecimal
fill(goldInk);//ink, 0-255 inbetween is grey = grey scale
textFont(titleFont,fontSize);//see variable notes

text(about ,aboutX, aboutY, aboutWidth, aboutHeight);

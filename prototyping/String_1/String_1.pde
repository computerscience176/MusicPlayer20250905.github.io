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
/*Website Name: To be determined
Profile: The name of the person of the account name
Title: depends on audio, Al Imran, Baqarah, and Fatiha
By: The reciter
lyrcis: depends on audio
time1 and time2: the time played, and the lenghth of audio

*/
//
rect(aboutX, aboutY, aboutWidth, aboutHeight);
//
text(about ,aboutX, aboutY, aboutWidth, aboutHeight);

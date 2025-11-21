/* Aspect Ration: for my images x3
-multi-line comment
*/
//
//Display
fullScreen(); //landscape
//size(900,400);// my image is a landscape
int appWidth = displayWidth;// width int is integer
int appHeight = displayHeight; //the height
println("Display VARS:", "appWidth:" + appWidth,"appHeight:"+ appHeight, "\n\tFullScreen: displayWidth:"+displayWidth, "displayHeight:"+displayHeight, "\n\t\t Size: width:"+width, "height:"+height);// glows green because its a perfect string \n makes new line \t tab
//
//Population
float imageX = appWidth * 1/16;
float imageY = appHeight * 1.5/24;
float imageWidth = appWidth * 14/16;
float imageHeight = appHeight * 6.5/24;
//
//Image Aspect Ratio Vars & Algorithum 
//Diretory or Pathway, Concatenation inciatetion string varaible spell correctly declaration ;
String upArrow = "../../";
String folder = "Images/";
String aliimran = "aliimran";
String fileExtensionJPG = ".jpg";
String imagePathway1 = upArrow +folder +aliimran + fileExtensionJPG;
//println("Aliimran Pathway:", imagePathway1);
//Image Loading & Aspect Ratio
PImage image1 = loadImage(imagePathway1);
int imageWidth1= 873;
int imageHeight1= 760;
//
//
//DIV
rect(imageX, imageY, imageWidth, imageHeight);
//
image(image1,imageX, imageY, imageWidth, imageHeight);

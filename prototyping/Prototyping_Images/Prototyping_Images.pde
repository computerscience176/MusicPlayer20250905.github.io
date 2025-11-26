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
float imageDIVX = appWidth * 1/16;
float imageDIVY = appHeight * 1.5/24;
float imageDIVWidth = appWidth * 14/16;
float imageDIVHeight = appHeight * 6.5/24;
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
int imageWidth1= 729;
int imageHeight1= 266;
//Aspect Ratio
float image1AspectRatio_GreaterOne = ( imageWidth1 >= imageHeight1 ) ? float(imageWidth1)/float(imageHeight1) : float(imageHeight1)/float(imageWidth1) ; //Ternary Operator
//ERROR, int populating float: truncating-adding zeros, casting
/* Line Notes
- Hardcoded Greater-Than-One Aspect Ratio, x or / >1 or <1
- 2D information from Image, Apsect Ratio Number
- Answers how to make image bigger or smaller
- Computer calculated DIV width & height
- Computer needs to compare image to DIV size difference
*/
println("Testing for Decimals, formula unsing ints:", imageWidth1/imageHeight1);
println("After casting added, Aspect Ratio >1:", image1AspectRatio_GreaterOne);

//Algorithm Decisions (choice)
float imageWidthAdjusted1 = imageDIVWidth;
float imageHeightAdjusted1 = ( imageWidth1 >= imageDIVWidth ) ? imageWidthAdjusted1 * image1AspectRatio_GreaterOne : imageWidthAdjusted1 / image1AspectRatio_GreaterOne ; //Ternary Operator

//Aspect Ratio

/*
imageWidth1
image1Width
imageHeight1
image1Height
image1Width, image1Height
*/
//if () {} else {} //End IF Aspect Ratio

//
//DIV

//
//image( image1, imageDIVX, imageDIVY, imageDIVWidth, imageDIVHeight );
image( image1, imageDIVX, imageDIVY, imageWidthAdjusted1, imageHeightAdjusted1 );
//
//End Program

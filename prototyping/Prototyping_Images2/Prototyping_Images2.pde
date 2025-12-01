/* Handling Errors, including resizing image automatically
 - NullPointerException on the Image-Variable
 */
//
//Display
//fullScreen(); //Landscape
size(500, 250); //Portrait, testing smaller DIVs ONLY
int appWidth = width; //displayWidth
int appHeight = height; //displayHeight
//println("Display VARS:", "appWidth:"+appWidth, "appHeight:"+appHeight);
//println("\t\t\t\tFullScreen, displayWidth:\t"+displayWidth, "\tdisplayHeight:\t"+displayHeight, "\n\t\t\t\tSize\t, width:\t\t"+width, "\theight:\t\t"+height);
//
//Population
float imageDivX = appWidth*1/16.0; //**Awkward DIV
float imageDivY = appHeight*1.5/24.0;
float imageDivWidth = appWidth*14/16.0;
float imageDivHeight = appHeight*6.5/24.0; // ** Make smaller to test height
//
//Image Aspect Ratio Vars & Algorithm
//Directory or Pathway, Concatenation
String upArrow = "../../";
String folder = "Images/";
String fatiha = "fatiha";
String fileExtensionJPG = ".jpg";
String imagePathway1 = upArrow + folder + fatiha + fileExtensionJPG;
//println("Fatiha Pathway:", imagePathway1);
//
//Image Loading & Aspect Ratio
PImage errorImage = loadImage("flower.jpg"); // optional backup image
PImage image1 = loadImage(imagePathway1);

if ( image1 == null ) {
  println("NullPointerException on Image ... check path: " + imagePathway1);
  image1 = errorImage;
  exit(); //handled whenever the computer uses this part or Memory
}
//Demonstrates alternate way to load an image without a pathway
//
int imageWidth1 = image1.width; // actual width
int imageHeight1 = image1.height; // actual height
//Aspect Ratio
float image1AspectRatio_GreaterOne = ( imageWidth1 >= imageHeight1 ) ? float(imageWidth1)/float(imageHeight1) : float(imageHeight1)/float(imageWidth1) ; //Ternary Operator
/* Line Notes
 - Greater-Than-One Aspect Ratio
 - 2D information from Image
 - Determines resizing
 - Computer compares image to DIV size
 */
//Algorithm Decisions (choice)
float imageWidthAdjusted1 = imageDivWidth;
float imageHeightAdjusted1 = ( imageWidth1 >= imageDivWidth ) ? imageWidthAdjusted1 / image1AspectRatio_GreaterOne : imageWidthAdjusted1 * image1AspectRatio_GreaterOne ; //Ternary Operator
//Verification: looks good
if ( imageHeightAdjusted1 > imageDivHeight ) {
  int indexWhile = 0; //Local Variable to IF-Statement
  while ( imageHeightAdjusted1>imageDivHeight ) {
    println("Iteration of Percent WHILE Loop", indexWhile++);
    if ( indexWhile < 10000 ) {
      //Checking Image Size
    } else {
      println("ERROR: infinite loop, Image Percent WHILE, value:", indexWhile);
      exit(); // stop program
      imageHeightAdjusted1=imageDivHeight; //makes WHILE False
    }
    //Image Adjustment Percent v Pixel
    imageWidthAdjusted1 *= 0.99;
    imageHeightAdjusted1 = imageWidthAdjusted1 / image1AspectRatio_GreaterOne;
    println("Inspection of percent decrease:", imageWidthAdjusted1, imageHeightAdjusted1, imageDivHeight);
  }
}
//
//DIV
rect( imageDivX, imageDivY, imageDivWidth, imageDivHeight );
//
//Draw Image
image( image1, imageDivX, imageDivY, imageWidthAdjusted1, imageHeightAdjusted1 );
//
//End Program

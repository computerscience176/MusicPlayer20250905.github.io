/* Multiple Images
 - Creating and using Arrays
 - An Introduction to naming variables
 */
//
//Display
//fullScreen(); //Landscape
size(900, 400); //Portrait, testing smaller DIVs ONLY
int appWidth = width; //displayWidth
int appHeight = height; //displayHeight
//println("Display VARS:", "appWidth:"+appWidth, "appHeight:"+appHeight);
//println("\t\t\t\tFullScreen, displayWidth:\t"+displayWidth, "\tdisplayHeight:\t"+displayHeight, "\n\t\t\t\tSize\t, width:\t\t"+width, "\theight:\t\t"+height);
//
//Population
float imageDivX = appWidth*1/16; 
float imageDivY = appHeight*1.5/24;
float imageDivWidth = appWidth*14/16;
float imageDivHeight = appHeight*6.5/24;
//
//Image Aspect Ratio Vars & Algorithm
int numberOfImages = 3; //Best Practice
int i = 1; //index for ARRAYs
/* Index Legend for Images
 i=0 // fatiha
 i=1 // baqarah
 i=2// aliimran
 */
//Directory or Pathway, Concatenation
String upArrow = "../../../";
String folder = "Images/";
String[] fileName = new String[numberOfImages];
fileName[0] = "fatiha"; //Rename-Copy OS Function & MouseClick
fileName[1] = "baqarah"; //Rename-Copy OS Function & MouseClick
fileName[2] = "aliimran";
String[] fileExtension = new String[numberOfImages];
fileExtension[0] = ".jpg"; //What is leftover after rename function
fileExtension[1] = ".png"; //What is leftover after rename function
fileExtension[2] = ".png";
String[] imagePathway = new String[numberOfImages];
imagePathway[i] = upArrow + folder + fileName[i] + fileExtension[i];
//println(imagePathway[i]);
//Note: Computer should be able to read a directory or pathway (intermediate code)
//Image Loading & Aspect Ratio
//Possible ERROR: NullPointerException on the Image-Variable
int numberOfErrorImages = 1; //Best Practice, but not used here
PImage[] image = new PImage[numberOfImages];
image[i] = loadImage( imagePathway[i] ); //Emphasizes numbers so computer will track, human does not
//Can be summarized with FOR Loop
//ERROR Check: loadImage()
PImage errorImage = loadImage( "flower.jpg" );
//Error image without need for pathway
//Error image allows image() to be completed, notifying user of error
//Demonstrates alternate way to load an image without a pathway
if ( image[i] == null ) {
  println("NullPointerException on Image ... Spelling Mistake with Pathway Concatenation");
  image[i] = errorImage;
  exit(); //handled whenever the computer uses this part or Memory
}
int[] imageWidth = new int[numberOfImages];
int[] imageHeight = new int[numberOfImages];
imageWidth[0] = 281; //Hardcoded, computer should be able to read this (Intermediate Code)
imageHeight[0] = 91; //Hardcoded, see image-properties
imageWidth[1] = 730; //Hardcoded, computer should be able to read this (Intermediate Code)
imageHeight[1] = 243; //Hardcoded
imageWidth[1] = 555; //Hardcoded, computer should be able to read this (Intermediate Code)
imageHeight[1] = 214;
//Aspect Ratio
//Note: code only executes once, one one Aspect Ratio Var required
float imageAspectRatio_GreaterOne = ( imageWidth[i] >= imageHeight[i] ) ? float(imageWidth[i])/float(imageHeight[i]) : float(imageHeight[i])/float(imageWidth[i]) ; //Ternary Operator
//ERROR, int populating float: truncating-adding zeros, casting
/* Line Notes
 - Hardcoded Greater-Than-One Aspect Ratio, x or / >1 or <1
 - 2D information from Image, Apsect Ratio Number
 - Answers how to make image bigger or smaller
 - Computer calculated DIV width & height
 - Computer needs to compare image to DIV size difference
 */
//println("Testing for Decimals, formula unsing ints:", imageWidth[i]/imageHeight[i]);
println("After casting added, Aspect Ratio >1:", imageAspectRatio_GreaterOne);
//Algorithm Decisions (choice)
float[] imageWidthAdjusted = new float[numberOfImages];
float[] imageHeightAdjusted = new float[numberOfImages];
imageWidthAdjusted[i] = imageDivWidth; //works for any image
imageHeightAdjusted[i] = ( imageWidth[i] >= imageDivWidth ) ? imageWidthAdjusted[i]/imageAspectRatio_GreaterOne : imageWidthAdjusted[i]*imageAspectRatio_GreaterOne ; //Ternary Operator
//Verification: looks good
//IF-statements, include more code than a phrase of
if ( imageHeightAdjusted[i] > imageDivHeight ) {
  //println("Image doesn't fit, program ended ... Fatal Flaw, must be solved ... Image doesn't show.");
  //exit();
  int indexWhile = 0; //Local Variable to IF-Statement
  //** WHILE Loops can run infinitely with an error if not controlled
  while ( imageHeightAdjusted[i]>imageDivHeight ) {
    println("Iteration of Percent WHILE Loop", indexWhile++); //prints value, then adds one, order is important in AP
    if ( indexWhile < 10000 ) {
      //Checking Image Size, below
    } else {
      //ERROR: Infinite Loop
      println("ERROR: infinite loop, Image Percent WHILE, value:", indexWhile);
      exit(); //doesn't work, must force WHILE Stop
      imageHeightAdjusted[i]=imageDivHeight; //makes WHILE False, stops WHILE
    } //End Check Infinite loop
    //Image Adjustment Percent v Pixel
    imageWidthAdjusted[i] *= 0.84; // -= 1
    imageHeightAdjusted[i] = imageWidthAdjusted[i]/imageAspectRatio_GreaterOne;
    println("Inspection of percent decrase:", imageWidthAdjusted[i], imageHeightAdjusted[i], imageDivHeight);
  } //End WHILE
  //Percent will be too small, must count back up but be smaller than total iterations
  /* Accuracy Comment, for AP Students
   - When % change is too much, go back to the previous answer, decrease percent until decreasing pixels is most accurate
   - Need to answer what is accurate
   - FYI: 1% gets within 3 pixels of actual answer
   - AP Project: combine into faster answer by counting lines of code executed
   */
  /* Teacher ONLY: compare to Percent Decrease for Program Speed, minimum lines of code measure
   while ( imageHeightAdjusted[i]<imageDivHeight ) {
   println("Iteration of Pixel WHILE Loop", indexWhile++); //prints value, then adds one, order is important in AP
   if ( indexWhile < 10000 ) {
   //Checking Image Size
   } else {
   //ERROR: Infinite Loop
   println("ERROR: infinite loop, Image Pixel WHILE, value:", indexWhile);
   //exit(); //doesn't work, must force WHILE Stop
   imageHeightAdjusted[i]=imageDivHeight;
   }
   imageHeightAdjusted[i]++;
   println("Inspection of Pixel decrease:", imageWidthAdjusted[i], imageHeightAdjusted[i], imageDivHeight);
   } //End WHILE Error Check, Counting Up
   */
  //
} //END IF
//
//DIV
rect( imageDivX, imageDivY, imageDivWidth, imageDivHeight );
//
//Draw Image
float drawX = imageDivX + (imageDivWidth - imageWidthAdjusted[i]) / 2;
float drawY = imageDivY + (imageDivHeight - imageHeightAdjusted[i]) / 2;

image(image[i], drawX, drawY, imageWidthAdjusted[i], imageHeightAdjusted[i]);
//End Program

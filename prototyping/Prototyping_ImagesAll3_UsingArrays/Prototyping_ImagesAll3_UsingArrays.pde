/* Multiple Images * 3
 - Creating and using Arrays
 */
//
//Display
//fullScreen(); //Landscape
size(900, 400); //landscape
int appWidth = width; //displayWidth
int appHeight = height; //displayHeight
//println("Display VARS:", "appWidth:"+appWidth, "appHeight:"+appHeight);
//println("\t\t\t\tFullScreen, displayWidth:\t"+displayWidth, "\tdisplayHeight:\t"+displayHeight, "\n\t\t\t\tSize\t, width:\t\t"+width, "\theight:\t\t"+height);
//
//Population my DIV size
float pictureDivX = appWidth*1/16; 
float pictureDivY = appHeight*1.5/24;
float pictureDivWidth = appWidth*14/16;
float pictureDivHeight = appHeight*6.5/24;
//
//Image Aspect Ratio Vars & Algorithm
int numberOfImages = 3; 
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
int numberOfErrorImages = 1; 
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
imageHeight[0] = 91; 
imageWidth[1] = 730; 
imageHeight[1] = 243; //Hardcoded
imageWidth[1] = 555; //Hardcoded
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
imageWidthAdjusted[i] = pictureDivWidth; //works for any image
imageHeightAdjusted[i] = ( imageWidth[i] >= pictureDivWidth ) ? imageWidthAdjusted[i]/imageAspectRatio_GreaterOne : imageWidthAdjusted[i]*imageAspectRatio_GreaterOne ; //Ternary Operator
//Verification: looks good
//IF-statements, include more code than a phrase of
if ( imageHeightAdjusted[i] > pictureDivHeight ) {
  //println("Image doesn't fit, program ended ... Fatal Flaw, must be solved ... Image doesn't show.");
  //exit();
  int indexWhile = 0; //Local Variable to IF-Statement
  //** WHILE Loops can run infinitely with an error if not controlled
  while ( imageHeightAdjusted[i]>pictureDivHeight ) {
    println("Iteration of Percent WHILE Loop", indexWhile++); //prints value, then adds one, order is important in AP
    if ( indexWhile < 10000 ) {
      //Checking Image Size, below
    } else {
      //ERROR: Infinite Loop
      println("ERROR: infinite loop, Image Percent WHILE, value:", indexWhile);
      exit(); //doesn't work, must force WHILE Stop
      imageHeightAdjusted[i]=pictureDivHeight; //makes WHILE False, stops WHILE
    } //End Check Infinite loop
    //Image Adjustment Percent v Pixel
    imageWidthAdjusted[i] *= 0.84; // -= 1
    imageHeightAdjusted[i] = imageWidthAdjusted[i]/imageAspectRatio_GreaterOne;
    println("Inspection of percent decrase:", imageWidthAdjusted[i], imageHeightAdjusted[i], pictureDivHeight);
  } //End WHILE
  //Percent will be too small, must count back up but be smaller than total iterations
  /* Accuracy Comment, for AP Students
   - When % change is too much, go back to the previous answer, decrease percent until decreasing pixels is most accurate
   - Need to answer what is accurate
   - FYI: 1% gets within 3 pixels of actual answer
   - AP Project: combine into faster answer by counting lines of code executed
   */
  /* compare to Percent Decrease for Program Speed, minimum lines of code measure
   while ( imageHeightAdjusted[i]<pictureDivHeight ) {
   println("Iteration of Pixel WHILE Loop", indexWhile++); //prints value, then adds one, order is important in AP
   if ( indexWhile < 10000 ) {
   //Checking Image Size
   } else {
   //ERROR: Infinite Loop
   println("ERROR: infinite loop, Image Pixel WHILE, value:", indexWhile);
   //exit(); //doesn't work, must force WHILE Stop
   imageHeightAdjusted[i]=pictureDivHeight;
   }
   imageHeightAdjusted[i]++;
   println("Inspection of Pixel decrease:", imageWidthAdjusted[i], imageHeightAdjusted[i], pictureDivHeight);
   } //End WHILE Error Check, Counting Up
   */
  //
} //END IF
//
//DIV
rect( pictureDivX, pictureDivY, pictureDivWidth, pictureDivHeight );
//
//Draw Image
float drawX = pictureDivX + (pictureDivWidth - imageWidthAdjusted[i]) / 2;
float drawY = pictureDivY + (pictureDivHeight - imageHeightAdjusted[i]) / 2;//make the image in the center, cuz when u do 2 equal spaces on both sides its in center.

image(image[i], drawX, drawY, imageWidthAdjusted[i], imageHeightAdjusted[i]);
//End Program

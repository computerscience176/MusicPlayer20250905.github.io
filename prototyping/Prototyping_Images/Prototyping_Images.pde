/* Aspect Ratio: for my images x3
-multi-line comment
*/
//
//Display
//fullScreen(); //landscape
size(900,400);// my image is a landscape
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
//Possible ERROR: NullPointerException on the Image
PImage errorImage = loadImage( "flower.jpg" );
PImage image1 = loadImage(imagePathway1);
if ( image1 == null ) {
  println("NullPointerException on Image ... Spelling Mistake with Pathway Concatenation");
  image1 = errorImage;
  exit(); //handled whenever the computer uses this part or Memory
}
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
//println("Testing for Decimals, formula unsing ints:", imageWidth1/imageHeight1);
//println("After casting added, Aspect Ratio >1:", image1AspectRatio_GreaterOne);

//Algorithm Decisions (choice)
float imageWidthAdjusted1 = imageDIVWidth;
float imageHeightAdjusted1 = ( imageWidth1 >= imageDIVWidth ) ? imageWidthAdjusted1 * image1AspectRatio_GreaterOne : imageWidthAdjusted1 / image1AspectRatio_GreaterOne ; //Ternary Operator
//Verification: looks good
if ( imageHeightAdjusted1 > imageDIVHeight ) {
  println("Image doesn't fit, program ended ... Fatal Flaw, must be solved ... Image doesn't show.");
  //exit();
  int indexWhile = 0; //Local Variable to IF-Statement
  //** WHILE Loops can run infinitely with an error if not controlled
  while ( imageHeightAdjusted1>imageDIVHeight ) {
    println("Iteration of Percent WHILE Loop", indexWhile++); //prints value, then adds one, order is important in AP
    if ( indexWhile < 10000 ) {
      //Checking Image Size, below
    } else {
      //ERROR: Infinite Loop
      println("ERROR: infinite loop, Image Percent WHILE, value:", indexWhile);
      exit(); //doesn't work, must force WHILE Stop
      imageHeightAdjusted1=imageDIVHeight; //makes WHILE False, stops WHILE
    } //End Check Infinite loop
    //Image Adjustment Percent v Pixel
    imageWidthAdjusted1 *= 0.47; // -= 1
    imageHeightAdjusted1 = imageWidthAdjusted1/image1AspectRatio_GreaterOne;
    println("Inspection of percent decrase:", imageWidthAdjusted1, imageHeightAdjusted1, imageDIVHeight);
  } //End WHILE
  //Percent will be too small, must count back up but be smaller than total iterations
  /* Accuracy Comment, for AP Students
   - When % change is too much, go back to the previous answer, decrease percent until decreasing pixels is most accurate
   - Need to answer what is accurate
   - FYI: 1% gets within 3 pixels of actual answer
   - AP Project: combine into faster answer by counting lines of code executed
   */
  while ( imageHeightAdjusted1<imageDIVHeight ) {
    println("Iteration of Pixel WHILE Loop", indexWhile++); //prints value, then adds one, order is important in AP
    if ( indexWhile < 10000 ) {
      //Checking Image Size
    } else {
      //ERROR: Infinite Loop
      println("ERROR: infinite loop, Image Pixel WHILE, value:", indexWhile);
      //exit(); //doesn't work, must force WHILE Stop
      imageHeightAdjusted1=imageDIVHeight;
    }
    imageHeightAdjusted1++;
    println("Inspection of percent dcrease:", imageWidthAdjusted1, imageHeightAdjusted1, imageDIVHeight);
  } //End WHILE Error Check, Counting Up
  //
} //END IF
//
//DIV
//image( image1, imageDIVX, imageDIVY, imageDIVWidth, imageDIVHeight );
image( image1, imageDIVX, imageDIVY, imageWidthAdjusted1, imageHeightAdjusted1 );
//
//End Program

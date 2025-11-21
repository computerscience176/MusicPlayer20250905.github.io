/* Aspect Ration: for my images x3
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
//Image Aspect Ratio Vars & Algorithum 
//Diretory or Pathway, Concatenation inciatetion string varaible spell correctly declaration ;
String upArrow = "../../";
String folder = "Images/";
String aliimran = "aliimran";
String fileExtensionJPG = ".jpg";
String imagePathway1 = upArrow +folder +aliimran + fileExtensionJPG;
println("Aliimran Pathway:", imagePathway1);

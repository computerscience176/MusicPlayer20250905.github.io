/* DIVS: 2D Rectangles
*/
//
fullScreen();//displayWidth //displayHeight
println(displayWidth,displayHeight);
int appWidth = displayWidth;
int appHeight = displayHeight;
//
float imageX = appWidth * 1/4;
float imageY = appHeight * 1/4;
float imageWidth = appWidth * 1/2 ;
float imageHeight = appHeight *1/2 ;

float playX1 = appWidth * 1/4;
float playY1 = appHeight * 1/4;
float playX2 = appWidth * 3/4;
float playY2 = appHeight * 1/2;
float playX3 = appWidth * 1/4;
float playY3 = appHeight * 3/4;
//
rect(imageX,imageY,imageWidth,imageHeight);
///
triangle(playX1,playY1,playX2,playY2,playX3,playY3);
//triangle(imageX + 1/4, imageY + 1/4, imageX + 1/4, imageY + 3/5, imageX +3/4, imageY + 1/2);

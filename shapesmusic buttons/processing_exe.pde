/* DIVs 2D Rectangles
- Step One: naming the rectangles by referencing the variables
- Writing a computer program backwards from an object

Future Steps
- Step Two: developing the Display CANVAS & the Ternary Operator
- Step Three: populating variables (local v global and type)
- turning on and off the prototype
*/

// Display CANVAS
fullScreen(); // displayWidth // displayHeight
int appWidth = displayWidth;
int appHeight = displayHeight;

// Previous Button
float previousX = appWidth * 1 / 16;
float previousY = appHeight * 20.4 / 24;
float previousWidth = appWidth * 1.4 / 16;
float previousHeight = appHeight * 2.5 / 24;
rect(previousX, previousY, previousWidth, previousHeight);

// Previous Button Inner Elements
rect(previousX + previousWidth * 1 / 4, previousY + previousHeight * 1 / 4, previousWidth * 1 / 8, previousHeight * 1 / 2);
triangle(previousX + previousWidth * 3 / 8, previousY + previousHeight * 1 / 2, previousX + previousWidth * 3 / 4, previousY + previousHeight * 1 / 4, previousX + previousWidth * 3 / 4, previousY + previousHeight * 3 / 4);

// Play Button
float playX = appWidth * 2.4 / 16;
float playY = appHeight * 20.4 / 24;
float playWidth = appWidth * 1.9 / 16;
float playHeight = appHeight * 2.5 / 24;
rect(playX, playY, playWidth, playHeight);

// Play Button Inner Elements
triangle(playX + playWidth * 1 / 4, playY + playHeight * 1 / 4, playX + playWidth * 1 / 4, playY + playHeight * 3 / 4, playX + playWidth * 3 / 4, playY + playHeight * 1 / 2);

// Forward Button
float forwardX = appWidth * 4.3 / 16;
float forwardY = appHeight * 20.4 / 24;
float forwardWidth = appWidth * 1.4 / 16;
float forwardHeight = appHeight * 2.5 / 24;
rect(forwardX, forwardY, forwardWidth, forwardHeight);

// Forward Button Inner Elements
triangle(forwardX + forwardWidth * 1 / 4, forwardY + forwardHeight * 1 / 4, forwardX + forwardWidth * 1 / 4, forwardY + forwardHeight * 3 / 4, forwardX + forwardWidth * 5 / 8, forwardY + forwardHeight * 1 / 2);
rect(forwardX + forwardWidth * 5 / 8, forwardY + forwardHeight * 1 / 4, forwardWidth * 1 / 8, forwardHeight * 1 / 2);

// Time Box
float timeBoxX = appWidth * 6 / 16;
float timeBoxY = appHeight * 21 / 24;
float timeBoxWidth = appWidth * 8.2 / 16;
float timeBoxHeight = appHeight * 1.5 / 24;
rect(timeBoxX, timeBoxY, timeBoxWidth, timeBoxHeight);

// Time Progress Bar
float timeX = appWidth * 6.3 / 16;
float timeY = appHeight * 21.5 / 24;
float timeWidth = appWidth * 7.7 / 16;
float timeHeight = appHeight * 0.3 / 24;
rect(timeX, timeY, timeWidth, timeHeight);

// Start Time
float time1X = appWidth * 6.3 / 16;
float time1Y = appHeight * 21.8 / 24;
float time1Width = appWidth * 1 / 16;
float time1Height = appHeight * 0.5 / 24;
rect(time1X, time1Y, time1Width, time1Height);

// End Time
float time2X = appWidth * 13 / 16;
float time2Y = appHeight * 21.8 / 24;
float time2Width = appWidth * 1 / 16;
float time2Height = appHeight * 0.5 / 24;
rect(time2X, time2Y, time2Width, time2Height);

// More Options Buttons
float more1X = appWidth * 14.6 / 16;
float more1Y = appHeight * 20.4 / 24;
float more1Width = appWidth * 0.5 / 16;
float more1Height = appHeight * 0.87 / 24;
rect(more1X, more1Y, more1Width, more1Height);

float more2X = appWidth * 14.6 / 16;
float more2Y = appHeight * 21.2 / 24;
float more2Width = appWidth * 0.5 / 16;
float more2Height = appHeight * 0.87 / 24;
rect(more2X, more2Y, more2Width, more2Height);

float more3X = appWidth * 14.6 / 16;
float more3Y = appHeight * 22 / 24;
float more3Width = appWidth * 0.5 / 16;
float more3Height = appHeight * 0.87 / 24;
rect(more3X, more3Y, more3Width, more3Height);

// Volume Box (Outer Rectangle)
float volumeX = appWidth * 13 / 16;
float volumeY = appHeight * 12.5 / 24;
float volumeWidth = appWidth * 2 / 16;
float volumeHeight = appHeight * 1.5 / 24;
rect(volumeX, volumeY, volumeWidth, volumeHeight);

// Padding around all sides
float padding = volumeWidth * 0.25;

// Horizontal Line (Volume Bar)
float lineX1 = volumeX + padding; // Start of the line
float lineY = volumeY + volumeHeight / 2; // Centered vertically
float lineX2 = volumeX + volumeWidth - padding; // End of the line
line(lineX1, lineY, lineX2, lineY);

// Minus Sign (-)
float minusX = lineX1 - padding * 0.5; // Position to the left of the line
float minusY = lineY;
float minusSize = padding * 0.5; // Size of the minus sign
line(minusX - minusSize / 2, minusY, minusX + minusSize / 2, minusY); // Horizontal line for minus

// Plus Sign (+)
float plusX = lineX2 + padding * 0.5; // Position to the right of the line
float plusY = lineY;
float plusSize = padding * 0.5; // Size of the plus sign
line(plusX - plusSize / 2, plusY, plusX + plusSize / 2, plusY); // Horizontal line for plus
line(plusX, plusY - plusSize / 2, plusX, plusY + plusSize / 2); // Vertical line for plus

// Circle inside the first "more" rectangle
float more1CircleX = more1X + more1Width / 2; // Center X of the circle
float more1CircleY = more1Y + more1Height / 2; // Center Y of the circle
float more1CircleDiameter = min(more1Width, more1Height) * 0.6; // Diameter of the circle
ellipse(more1CircleX, more1CircleY, more1CircleDiameter, more1CircleDiameter);

// Circle inside the second "more" rectangle
float more2CircleX = more2X + more2Width / 2; // Center X of the circle
float more2CircleY = more2Y + more2Height / 2; // Center Y of the circle
float more2CircleDiameter = min(more2Width, more2Height) * 0.6; // Diameter of the circle
ellipse(more2CircleX, more2CircleY, more2CircleDiameter, more2CircleDiameter);

// Circle inside the third "more" rectangle
float more3CircleX = more3X + more3Width / 2; // Center X of the circle
float more3CircleY = more3Y + more3Height / 2; // Center Y of the circle
float more3CircleDiameter = min(more3Width, more3Height) * 0.6; // Diameter of the circle
ellipse(more3CircleX, more3CircleY, more3CircleDiameter, more3CircleDiameter);

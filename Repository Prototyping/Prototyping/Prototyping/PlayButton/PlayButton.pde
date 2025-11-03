/* DIVS: 2D Rectangles
*/
//
fullScreen(); //dispalyWidth //displayHeight
println(displayWidth, displayHeight);
int appWidth = displayWidth;
int appHeight = displayHeight;
//
float imageX = appWidth * 1/4;
float imageY = appHeight * 1/4;
float imageWidth = appWidth * 1/2;
float imageHeight = appHeight * 1/2;
float playX1 = imageX + imageWidth * 1/4; //TopLeft Width
float playY1 = imageY + imageHeight * 1/4; //Topleft Height
float playX2 = imageX + imageWidth * 3/4; //Right Width
float playY2 = imageY + imageHeight *1/2; //Right Height
float playX3 = imageX + imageWidth * 1/4; //BottomLeft Width
float playY3 = imageY + imageHeight * 3/4; //BottomLeft Height
//
rect(imageX, imageY, imageWidth, imageHeight);
//
triangle(playX1, playY1, playX2, playY2, playX3, playY3);

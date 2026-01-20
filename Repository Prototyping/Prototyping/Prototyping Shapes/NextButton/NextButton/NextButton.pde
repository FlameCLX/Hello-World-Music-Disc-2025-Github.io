/* DIVS: 2D Rectangles;
*/
//
fullScreen(); //displayWidth //displayHeight
println(displayWidth, displayHeight);
int appWidth = displayWidth;
int appHeight = displayHeight;
//
float imageX = appWidth * 1/4;
float imageY = appHeight * 1/4;
float imageWidth = appWidth * 1/2;
float imageHeight = appHeight * 1/2;
float playX1 = imageX + imageWidth * 2/8; //TopLeft Width
float playY1 = imageY + imageHeight * 2/8; //Topleft Height
float playX2 = imageX + imageWidth * 5/8; //Right Width
float playY2 = imageY + imageHeight *1/2; //Right Height
float playX3 = imageX + imageWidth * 2/8; //BottomLeft Width
float playY3 = imageY + imageHeight * 6/8; //BottomLeft Height
float imageR = appWidth * 4.5/8;
float imageE = appHeight * 3/8;
float imageWidthe = appWidth * 0.5/8;
float imageHeighte = appHeight * 2/8;
//float playX4 = imageX + imageWidth * 1/2;
//float playY4 = imageY + imageHeight * 3/4;
//float playX5 = imageX + imageWidth * 2/4;
//float playY5 = imageY + imageHeight * 1/4; 
//float playX6 = imageX + imageWidth * 3/4;
//float playY6 = imageY + imageHeight * 1/2;
rect(imageX, imageY, imageWidth, imageHeight);
//
rect(imageR, imageE, imageWidthe, imageHeighte);
//
triangle(playX1, playY1, playX2, playY2, playX3, playY3);
//
//triangle(playX4, playY4, playX5, playY5, //playX6, playY6);

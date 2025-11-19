fullScreen();
println(displayWidth, displayHeight);
int appWidth = displayWidth;
int appHeight = displayHeight;
//
float imageX = appWidth * 8/64;      //Big Triangle
float imageY = appHeight * 8/64;
float imageWidth = appWidth * 48/64;
float imageHeight = appHeight * 36/64;
//
float imageR = appWidth * 8/64;   //FastBackwords
float imageE = appHeight * 48/64;
float imageWidthe = appWidth * 8/64;
float imageHeighte = appHeight * 12/64;
float playX1 = imageR + imageWidth * 8/64; // 6/8
float playY1 = imageE + imageHeight * 18/64; // 6/8
float playX2 = imageR + imageWidth * 6/64; // 3/8
float playY2 = imageE + imageHeight * 10/64; //half
float playX3 = imageR + imageWidth * 8/64; // 6/8
float playY3 = imageE + imageHeight * 2/64; // 2/8
//
float imageT = appWidth * 18/64;    //BeforeButton
float imageU = appHeight * 48/64;
float imageWidths = appWidth * 8/64;
float imageHeights = appHeight * 12/64;
//
float imageQ = appWidth * 28/64;    //PauseButton / PlayButton
float imageI = appHeight * 48/64;
float imageWidthq = appWidth * 8/64;
float imageHeightq = appHeight * 12/64;
//
float imageB = appWidth * 38/64;    //NextButton
float imageP = appHeight * 48/64;
float imageWidthi = appWidth * 8/64;
float imageHeighti = appHeight * 12/64;
//
float imageM = appWidth * 48/64;    //FastForward
float imageN = appHeight * 48/64;
float imageWidthb = appWidth * 8/64;
float imageHeightb = appHeight * 12/64;
//
rect(imageX, imageY, imageWidth, imageHeight);
//
triangle(playX1, playY1, playX2, playY2, playX3, playY3);
//
rect(imageR, imageE, imageWidthe, imageHeighte);
//
rect(imageT, imageU, imageWidths, imageHeights);
//
rect(imageQ, imageI, imageWidthq, imageHeightq);
//
rect(imageB, imageP, imageWidthi, imageHeighti);
//
rect(imageM, imageN, imageWidthb, imageHeightb);

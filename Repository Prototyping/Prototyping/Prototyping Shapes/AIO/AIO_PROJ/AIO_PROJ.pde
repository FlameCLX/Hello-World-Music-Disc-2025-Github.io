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
//
float previousButton = appWidth * 18/64;    //BeforeButton
float previousButtons = appHeight * 48/64;
float previousWidths = appWidth * 8/64;
float previousHeights = appHeight * 12/64;
float playX1 = previousButton + imageWidth * 9/64; // 6/8
float playY1 = previousButtons + imageHeight * 18/64; // 6/8
float playX2 = previousButton + imageWidth * 4/64; // 3/8
float playY2 = previousButtons + imageHeight * 11/64; //half
float playX3 = previousButton + imageWidth * 9/64; // 6/8
float playY3 = previousButtons + imageHeight * 3/64; // 2/8
float imageT = previousButton + imageWidth * 1.5/64; //+ previousButton * 8/64;
float imageU = previousButtons + imageHeight * 3/64; //+ previousButtons * 8/64;
float imageWidths = previousButton + imageWidth * -21.5/64;
float imageHeights = previousButtons + imageHeight * -70/64;
//
float imageQ = appWidth * 28/64;    //PauseButton / PlayButton
float imageI = appHeight * 48/64;
float imageWidthq = appWidth * 8/64;
float imageHeightq = appHeight * 12/64;
float stopButton = imageQ + appWidth * 1.5/64;
float stopButtons = imageI + appHeight * 2/64;
float imageStop = imageQ + appWidth * -26/64;
float imageStops = imageI + appHeight * -40/64;
float playButton = imageQ + appWidth * 4.5/64;
float playButtons = imageI + appHeight * 2/64;
float imagePlay = imageQ + appWidth * -26/64;
float imagePlays = imageI + appHeight * -40/64;
//
float imageB = appWidth * 38/64;    //NextButton
float imageP = appHeight * 48/64;
float imageWidthi = appWidth * 8/64;
float imageHeighti = appHeight * 12/64;
float playX4 = imageB + imageWidth * 2/64; // 6/8
float playY4 = imageP + imageHeight * 18/64; // 6/8
float playX5 = imageB + imageWidth * 7/64; // 3/8
float playY5 = imageP + imageHeight * 11/64; //half
float playX6 = imageB + imageWidth * 2/64; // 6/8
float playY6 = imageP + imageHeight * 3/64; // 2/8
float nextButton = imageB + imageWidth * 7/64; //+ previousButton * 8/64;
float nextButtons = imageP + imageHeight * 3/64; //+ previousButtons * 8/64;
float imageNext = imageB + imageWidth * -48.2/64;
float imageNexts = imageP + imageHeight * -70/64;
//
float imageM = appWidth * 48/64;    //FastForward
float imageN = appHeight * 48/64;
float imageWidthb = appWidth * 8/64;
float imageHeightb = appHeight * 12/64;
float lineX1 = imageM + appWidth * 1.2/64;
float lineY1 = imageN + appHeight * 1.4/64;
float lineX2 = imageM + appWidth * 7/64;
float lineY2 = imageN + appHeight * 10.5/64;
float lineX3 = imageM + appWidth * 1.2/64;
float lineY3 = imageN + appHeight * 10.5/64;
float lineX4 = imageM + appWidth * 6/64;
float lineY4 = imageN + appHeight * 2.5/64;
float arrowX1 = lineX2 + appWidth * -1.5/64;
float arrowY1 = lineY2 + appHeight * -9/64;
float arrowX2 = lineX2 + appWidth * 6/64;
float arrowY2 = lineY2 +appHeight* 5/64;
float arrowX3 = lineX2 + appWidth * -1.5/64;
float arrowY3 = lineY2  + appHeight * -9/64;
//
rect(imageX, imageY, imageWidth, imageHeight);
////
rect(imageR, imageE, imageWidthe, imageHeighte);
//
rect(previousButton, previousButtons, previousWidths, previousHeights);
rect(imageT, imageU, imageWidths, imageHeights);
//
rect(imageQ, imageI, imageWidthq, imageHeightq);
rect(stopButton, stopButtons, imageStop, imageStops);
rect(playButton, playButtons, imagePlay, imagePlays);
//
rect(imageB, imageP, imageWidthi, imageHeighti);
rect(nextButton, nextButtons, imageNext, imageNexts);
//
rect(imageM, imageN, imageWidthb, imageHeightb);
//
triangle(playX1, playY1, playX2, playY2, playX3, playY3); //PreviousButton
//
triangle(playX4, playY4, playX5, playY5, playX6, playY6);
//
line(lineX1, lineY1, lineX2, lineY2);
//
line(lineX3, lineY3, lineX4, lineY4);
//
triangle(arrowX1, arrowY1, arrowX2, arrowY2, arrowX3, arrowY3);
//iangle(arrowX4, arrowY4, arrowX5, arrowY5, arrowX6, arrowY6);

fullScreen(); //displayWidth //displayHeight;
println(displayWidth, displayHeight);
int appWidth = displayWidth; //Best practice with key variables
int appHeight = displayHeight; 
//
//Ruler action of numbers, verify by changing ratio numbers from GUI Divs
float divX = appWidth * 1/4;
float divY = appHeight * 25/100;
float divWidth = appWidth * 1/2;
float divHeight = appHeight * 1/2;
//Paperfolding action of ratios, never changes
//Order of Operations: ruler + paperfolding = correct location
float stopX = divX + divWidth * 1/4;
float stopY = divY + divHeight * 1/4;
float stopWidth = divWidth * 1/2;
float stopHeight = divHeight * 1/2;
float mute1X1 = stopX;
float mute1Y1 = stopY;
float mute2X2 = stopX + stopWidth;
float mute2Y2 = stopY + stopHeight;
float mute3X1 = stopX + stopWidth;
float mute3Y1 = stopY + stopHeight;
float mute4X2 = stopX + stopWidth;
float mute4Y2 = stopY + stopHeight;


float playX1 = divX + divWidth * 1/4;
float playY1 = divY + divHeight * 1/4;
float playX2 = divX + divWidth * 3/4;
float playY2 = divY + divHeight * 1/2;
float playX3 = divX + divWidth * 1/4;
float playY3 = divY + divHeight * 3/4;
//float playX4 = divX + divWidth * 3/4;
//float playY4 = divY + divHeight * 1/4;
//
//DIVs: for human information of formulatic and variable accuracy
rect(divX, divY, divWidth, divHeight); ////Group Of variables
//
//Library of Symbols, requres DIVs
rect(stopX, stopY, stopWidth, stopHeight);
//triangle(playX1, playY1, playX2, playY2, playX3, playY3);
line(mute1X1, mute1Y1, mute2X2, mute2Y2);
line(mute3X1, mute3Y1, mute4X2, mute4Y2);

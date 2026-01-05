fullScreen(); 
//size(500, 100); 
int appWidth = displayWidth;
int appHeight = displayHeight;
//Population
int numberOfDIVs = 3; 
float[] stringDivX = new float[numberOfDIVs];
float[] stringDivY = new float[numberOfDIVs];
float[] stringDivWidth = new float[numberOfDIVs];
float[] stringDivHeight = new float[numberOfDIVs];
stringDivX[0] = appWidth*1/4;
stringDivY[0] = appHeight*1/8;
stringDivWidth[0] = appWidth*1/2;
stringDivHeight[0] = appHeight*1/8; 
stringDivX[1] = stringDivX[0]; 
stringDivY[1] = appHeight*3/8;
stringDivWidth[1] = appWidth*1/4;
stringDivHeight[1] = stringDivHeight[0]; 
stringDivX[2] = stringDivX[0]; 
stringDivY[2] = appHeight*5/8;
stringDivWidth[2] = appWidth*5/8;
stringDivHeight[2] = stringDivHeight[0];
//
String[] text = new String[numberOfDIVs];
text[0] = "Yassir! ... Typed Chat";
text[1] = "That won't work chat ... I'm too small for you to see me.";
text[2] = "I wish to pass ... WITH EASE!";
//
float[] fontSize = new float[numberOfDIVs]; 
String[] font = new String[numberOfDIVs];
font[0] = "Verdana";
font[1] = "ForteMT";
font[2] = "Algerian";
PFont[] drawFont = new PFont[numberOfDIVs]; 
//
float[] aspectRatio = new float[numberOfDIVs];
/* Font Data Structure Legend
 0: Verdana
 1: ForteMT
 2: Algerian
 */
int denominator = 120; 
int[] testedSize = new int[numberOfDIVs];
testedSize[0] = 129; 
testedSize[1] = 131; 
testedSize[2] = 141; 
for (int i=0; i<numberOfDIVs; i++) {
  aspectRatio[i] = float(testedSize[i]) / float(denominator);
  fontSize[i] = aspectRatio[i]*10; //mutliplier makes font very small but not near 1, although a "1" font size will work
  drawFont[i] = createFont(font[i], fontSize[i]);
} //End Reading drawFont[]
//
for ( int i=0; i<numberOfDIVs; i++ ) {
  rect( stringDivX[i], stringDivY[i], stringDivWidth[i], stringDivHeight[i] );
} 
//
color purpleInk = #2C08FF; 
color whiteInk = #FFFFFF;
color resetInk = whiteInk;
fill(purpleInk);
//
textAlign (CENTER, CENTER); 
float constantDecrease = 0.99;  //99% of origonal or 1% decrease
int iWhile=0; //Counting iterations of WHILE, adjust with optimization and pixel decrease adjustment algorithm
for ( int i=0; i<3; i++ ) {
  textFont(drawFont[i], fontSize[i]); //textSize() required before text() or textWidth()
  //Required * / Choice for Aspect Ratio, similar to Ternary Operator
  if ( textWidth( text[i] ) > stringDivWidth[i] ) {
    //Decrease text by *
    while ( textWidth( text[i] ) > stringDivWidth[i] ) {
      iWhile++;
      //ERROR: infinite loop, requires exit() & println()
      fontSize[i] *= constantDecrease; //Assignment Operator  //fontSize = fontSize*0.99;
      textFont(drawFont[i], fontSize[i]);
    } //End WHILE Error Check Text-wrap
  } else {
    //Increase text by /
    while ( textWidth( text[i] ) < stringDivWidth[i] ) {
      iWhile++;
      //ERROR: infinite loop, requires exit() & println()
      fontSize[i] /= constantDecrease; //Assignment Operator  //fontSize = fontSize*0.99;
      textFont(drawFont[i], fontSize[i]);
    } 
  }
  float pixelDifference = stringDivWidth[i] - textWidth( text[i] );
  
  while ( pixelDifference < 1 ) {
    iWhile++;
    fontSize[i]--; //not percent change, single pixel decrease
    textFont(drawFont[i], fontSize[i]);
    pixelDifference = stringDivWidth[i]-textWidth( text[i] );
  }
} //End FOR Loop, Font Size Check in DIVs
//
for ( int i=0; i<numberOfDIVs; i++ ) {
  textFont(drawFont[i], fontSize[i]);
  text( text[i], stringDivX[i], stringDivY[i], stringDivWidth[i], stringDivHeight[i] );
}
fill(resetInk);
//
//End Program

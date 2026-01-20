
/* Creating Buttons - Text in the Button
 - Simple Algorithm ... not discussing variables, fonts, DIVs, iterations, or errors
 - Default font size ... may be difficult to see depending on Display Geometry
 */
//
//Library - Minim
//
//Global Variables
int appWidth, appHeight;
float quitDivX, quitDivY, quitDivWidth, quitDivHeight;
float playDivX, playDivY, playDivWidth, playDivHeight;
float playSymbolX1, playSymbolY1, playSymbolX2, playSymbolY2, playSymbolX3, playSymbolY3;
//
Boolean playButton=false, quitButton=false;
//
color resetBackground, resetInk, resetBackgroundDay, resetInkDay, resetBackgroundNight, resetInkNight;
color quitButtonInk;
color playColourBackground, playColourSymbol, playColourBackgroundActivated, playColourSymbolActivated;
color quitBackground, quitBackgroundActivated;
Boolean nightMode=false;
//
void setup() {
  //Display
  size(500, 400);
  //fullScreen();
  appWidth = width;
  appHeight = height;
  //
  //Population
  quitDivX = appWidth * 9/10;
  quitDivY = appHeight * 0/10;
  quitDivWidth = appWidth * 1/10;
  quitDivHeight = appHeight * 1/10;
  playDivX = appWidth * 4/10;
  playDivY = appHeight * 4.5/10;
  playDivWidth = appWidth * 2/10;
  playDivHeight = appHeight * 1/10;
  playSymbolX1 = playDivX + playDivWidth * 1/4;
  playSymbolY1 = playDivY + playDivHeight * 1/4;
  playSymbolX2 = playSymbolX1 + playDivWidth * 1/2;
  playSymbolY2 = playDivY + playDivHeight * 1/2;
  playSymbolX3 = playSymbolX1;
  playSymbolY3 = playDivY + playDivHeight * 3/4;
  //
  //DIVs
  rect(quitDivX, quitDivY, quitDivWidth, quitDivHeight);
  rect(playDivX, playDivY, playDivWidth, playDivHeight);
  triangle(playSymbolX1, playSymbolY1, playSymbolX2, playSymbolY2, playSymbolX3, playSymbolY3);
  //
  //Colour Population
  nightMode=false;
  color black = 0; //Gray Scale, much smaller color, 256 bits
  color white = 255; //Gray Scale
  color grayScale = 256/2; //Example Gray Scale, small memory
  color gray = #B9B9B9; //Example Gray Scale, large memory
  //CANVAS: default background and ink
  resetBackgroundDay = white;
  resetInkDay = black;
  resetBackgroundNight = 256/4;
  resetInkNight = int(256*0.75); // 3/4 of origoinal, not 1/4
  println("Casting answer is:", resetInkNight); //Exactly 192, no rounding invovled, checked on calculator
  //Button Colours: layering local variables leads to preferences controled by Booleans
  color red = #FF0000;
  color purple = #F511EA; //human name for hexidecimal code
  color magenta = #F574F9;
  color darkGray = grayScale;
  color ligthGray = gray;
  //Note: able to use a Ternary Operator but ineffiecient
  if ( nightMode == true ) {
    resetBackground = resetBackgroundNight;
    resetInk = resetInkNight;
    playColourBackground = darkGray;
    playColourSymbol = ligthGray;
    playColourBackgroundActivated = ligthGray;
    playColourSymbolActivated = darkGray;
    quitBackground = ligthGray;
    quitBackgroundActivated = red;
    quitButtonInk = darkGray;
  } else
  {
    //Previously the Day Colour Assignments
    resetBackground = resetBackgroundDay;
    resetInk = black;
    playColourBackground = purple;
    playColourSymbol = magenta;
    playColourBackgroundActivated = magenta;
    playColourSymbolActivated = purple;
    quitBackground = white;
    quitBackgroundActivated = red;
    quitButtonInk = black;
  } //End Night Mode Colors
  //
} //End setup
//
void draw() {
  //println ("My Mouse is", mouseX, mouseY);
  //Button HoverOver
  if ( mouseX>playDivX && mouseX<playDivX+playDivWidth && mouseY>playDivY && mouseY<playDivY+playDivHeight ) {
    //println("Wahoo! I'm playing you");
    playButton = true;
    fill(playColourBackgroundActivated);
    rect(playDivX, playDivY, playDivWidth, playDivHeight);
    fill(playColourSymbolActivated);
    triangle(playSymbolX1, playSymbolY1, playSymbolX2, playSymbolY2, playSymbolX3, playSymbolY3);
    fill(resetBackground);
  } else {
    //print(" ");
    playButton = false;
    fill(playColourBackground);
    rect(playDivX, playDivY, playDivWidth, playDivHeight);
    fill(playColourSymbol);
    triangle(playSymbolX1, playSymbolY1, playSymbolX2, playSymbolY2, playSymbolX3, playSymbolY3);
    fill(resetBackground);
  }//End Play Button Hover Over
  if ( mouseX>quitDivX && mouseX<quitDivX+quitDivWidth && mouseY>quitDivY &&mouseY<quitDivY+quitDivHeight ) {
    fill(quitBackgroundActivated);
    rect(quitDivX, quitDivY, quitDivWidth, quitDivHeight);
    fill(resetBackground);
    fill(quitButtonInk);
    //Note: rect() starts top-right corner, text() starts bottom-right corner
   text("X", quitDivX+quitDivWidth*1/2, quitDivY+quitDivHeight*3/5); //adjust fractions or decimals until working
    fill(resetInk);
  } else {
    fill(quitBackground);
    rect(quitDivX, quitDivY, quitDivWidth, quitDivHeight);
    fill(resetBackground);
    fill(quitButtonInk);
    //Note: rect() starts top-right corner, text() starts bottom-right corner
    text("X", quitDivX+quitDivWidth*1/2, quitDivY+quitDivHeight*3/5); //adjust fractions or decimals until working
    fill(resetInk);
  }//End Quit Button Hover Over
  //
} //End draw
//
void mousePressed() {
  //Quit Button: does not use Boolean, only mouseX&Y already present in system key variables
  if ( mouseX>quitDivX && mouseX<quitDivX+quitDivWidth && mouseY>quitDivY &&mouseY<quitDivY+quitDivHeight ) {
    noLoop(); //Adjusts the exit of the program using finishing draw()
    exit(); //With noLoop(), exit happens here
    println("Final Line of mousePressed and finishes draw()");
  }
  //Music Play Functions
  if ( playButton == true ) {
    println("Play My Song");
    playButton=false; //reset Boolean for draw()
  } else {
    println(" ");
  }
} //End Mouse Pressed
//
void keyPressed() {
} //End Key Pressed
//
//End MAIN Program

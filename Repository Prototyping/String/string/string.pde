//Display
fullScreen(); //Landscape
size(500, 100); //Portrait, testing smaller DIVs ONLY
int appWidth = displayWidth; //width
int appHeight = displayHeight; //height
//
//Population
float stringDivX = appWidth*1/4;
float stringDivY = appHeight*1/10;
float stringDivWidth = appWidth*1/2;
float stringDivHeight = appHeight*1/10.5;
//
String title = "PORCHE GT3 RS IS PEAK";
//
float fontSize = appHeight; //Entire Program
PFont titleFont; //Font Var name
String Verdana = "Verdana"; //Spelling of the Font Matters, se above
//
titleFont = createFont (Verdana, fontSize);
//
println(fontSize, Verdana, titleFont);
float fontSizeVerdana= 80 ;
//
println("FontSize:", fontSize);
//
float VerdanaAspectRatio = fontSizeVerdana / stringDivHeight ;
fontSize = stringDivHeight*VerdanaAspectRatio;
println("Verdana Aspect Ratio", VerdanaAspectRatio);
println();
//Note: DIV to "see" variables
rect( stringDivX, stringDivY, stringDivWidth, stringDivHeight );
//
color redInk = #961616; //Hexadecimal
color whiteInk = #FFFFFF ; //GrayScale is 255
color resetInk = whiteInk;
fill(redInk); //Ink, grey Scale 0-255
//
textAlign(CENTER, CENTER);
//
textFont(titleFont,fontSize);
//
text( title, stringDivX, stringDivY, stringDivWidth, stringDivHeight );
fill(resetInk);
//
//End Program

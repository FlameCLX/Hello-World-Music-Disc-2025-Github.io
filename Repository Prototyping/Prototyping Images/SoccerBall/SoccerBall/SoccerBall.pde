fullScreen(); //Landscape
size(500, 250); //Portrait, testing smaller DIVs ONLY
int appWidth = width; //displayWidth
int appHeight = height; //displayHeight
//println("Display VARS:", "appWidth:"+appWidth, "appHeight:"+appHeight);
//println("\t\t\t\tFullScreen, displayWidth:\t"+displayWidth, "\tdisplayHeight:\t"+displayHeight, "\n\t\t\t\tSize\t, width:\t\t"+width, "\theight:\t\t"+height);
//
//Population
float imageDivX = appWidth*1/4; 
float imageDivY = appHeight*1/10;
float imageDivWidth = appWidth*1/2;
float imageDivHeight = appHeight*4/5;
//
//Image Aspect Ratio Vars & Algorithm
//Directory or Pathway, Concatenation
String upArrow = "../../";
String folder = "Lesson Dependancies Folder/Images/"; 
String soccerball = "soccerball";
String fileExtensionJPG = ".jpg";
String imagePathway1 = upArrow + folder + soccerball + fileExtensionJPG;
//println("Bike Pathway:", imagePathway1);
//Image Loading & Aspect Ratio
//
//Possible ERROR: NullpointerException 
PImage image1 = loadImage( imagePathway1 );
if (image1 == null) {
println("NullPointerException on image ... Spelling Mistake with pathway on cancotation");
}
int imageWidth1 = 860; //Hardcoded
int imageHeight1 = 529; //Hardcoded
//Aspect Ratio
float image1AspectRatio_GreaterOne = ( imageWidth1 >= imageHeight1 ) ? float(imageWidth1)/float(imageHeight1) : float(imageHeight1)/float(imageWidth1) ; //Ternary Operator
//ERROR, int populating float: truncating-adding zeros, casting
/* Line Notes
- Hardcoded Greater-Than-One Aspect Ratio, x or / >1 or <1
- 2D information from Image, Apsect Ratio Number
- Answers how to make image bigger or smaller
- Computer calculated DIV width & height
- Computer needs to compare image to DIV size difference
*/
//println("Testing for Decimals, formula unsing ints:", imageWidth1/imageHeight1);
//println("After casting added, Aspect Ratio >1:", image1AspectRatio_GreaterOne);
//Algorithm Decisions (choice)
float imageWidthAdjusted1 = imageDivWidth;
float imageHeightAdjusted1 = ( imageWidth1 >= imageDivWidth ) ? imageWidthAdjusted1 * image1AspectRatio_GreaterOne : imageWidthAdjusted1 / image1AspectRatio_GreaterOne ; //Ternary Operator
//Verification: looks good
if ( imageHeightAdjusted1 > imageDivHeight ) {
  println("Image doesn't fit, program ended ... Fatal Flaw, must be solved ... Image doesn't show.");
  exit();
 while (imageHeightChanged1>imageDivHeight) {
   imageWidthAdjusted1 *= 0.99;
   imageHeightAdjusted1 = imageWidthAdjusted1/image1AspectRatio_GreaterOne;
//println ("Inspection of percent decrease:", imageWidthAdjusted1, imageHeightAdjusted1)
}
//
//DIV
rect( imageDivX, imageDivY, imageDivWidth, imageDivHeight );
//
//image( image1, imageDivX, imageDivY, imageDivWidth, imageDivHeight );
image( image1, imageDivX, imageDivY, imageWidthAdjusted1, imageHeightAdjusted1 );

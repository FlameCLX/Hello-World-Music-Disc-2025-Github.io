fullScreen(); //Display : Potrait
size(1080, 1980);
int appWidth = displayWidth;  //Width
int appHeight = displayHeight;  //Height
//println("Display VARS:", "appWidth:"+appWidth, "appHeight:"+appHeight);
//println("\t\t\t\tFullScreen, displayWidth:\t"+displayWidth, "\tdisplayHeight:\t"+displayHeight, "\n\t\t\t\tSize\t, width:\t\t"+width, "\theight:\t\t"+height);
//Population
float imageDivX = appWidth*1/8;
float imageDivY = appHeight*1/8;
float imageDivWidth = appWidth*3/4;
float imageDivHeight = appHeight*3/4;
//Image Aspect Ratio Vars & Algorithm
//Concatenation
String upArrow = "../../";
String folder = "Dependancy Images Folder/Images/";
String Soccer = "Soccer";
String fileExtensionJPG = ".jpg";
String imagePathway1 = upArrow + folder + Soccer + fileExtensionJPG;
//println("Soccer Pathway:", imagePathway1);
//Image Loading
//Possible ERROR: NullPointerException
PImage image1 = loadImage(imagePathway1);
/*if (image1 == null); {
println("NullPointerException on image ... Spelling Mistake with pathway on cancotation");
} */
int imageWidth1 = 318;
int imageHeight1 = 159;
//Aspect Ratio
float image1AspectRatio_GreaterOne = ( imageWidth1 >= imageHeight1 ) ? float(imageWidth1)/float(imageHeight1) : float(imageHeight1)/float(imageWidth1);
//
/*
- Hardcoded Greater-Than-One Aspect Ratio, x or / >1 or <1
 - 2D information from Image, Apsect Ratio Number
 - Answers how to make image bigger or smaller
 - Computer calculated DIV width & height
 - Computer needs to compare image to DIV size difference
 */
//
float imageWidthAdjusted1 = imageDivWidth;
float imageHeightAdjusted1 = ( imageWidth1 >= imageDivWidth ) ? imageWidthAdjusted1 * image1AspectRatio_GreaterOne : imageWidthAdjusted1 / image1AspectRatio_GreaterOne;  
/*
if ( imageHeightAdjusted1 > imageDivHeight ) {
  println("Image doesn't fit, program ended ... Fatal Flaw, must be solved ... Image doesn't show.");
  exit();
 while (imageHeightChanged1>imageDivHeight) {
   imageWidthAdjusted1 *= 0.99;
   imageHeightAdjusted1 = imageWidthAdjusted1/image1AspectRatio_GreaterOne;
*/
rect(imageDivX, imageDivY, imageDivWidth, imageDivHeight);
//
//image(imageDivX, imageDivY, imageDivWidth, imageHeight);
image(image1, imageDivX, imageDivY, imageWidthAdjusted1, imageHeightAdjusted1);
//
//End Program

fullScreen(); //Display : Potrait
//size(500, 250);
int appWidth = displayWidth;
int appHeight = displayHeight;
//
float imageDivX = appWidth* 2/8;
float imageDivY = appHeight* 2/8;
float imageDivWidth = appWidth* 4/8;
float imageDivHeight = appHeight* 4/8;
//Image Aspect Ratio Vars & Algorithm
//Concatenation
String upArrow = "../../";
String folder = "Dependancy Images Folder/Images/";
String Soccer = "Soccer";
String fileExtensionJPG = ".jpg";
String imagePathway1 = upArrow + folder + Soccer + fileExtensionJPG;
println("Soccer Pathway:", imagePathway1);
//Image Loading
PImage image1 = loadImage(imagePathway1);
int imageWidth1 = 256 ;
int imageHeight1 = 160 ;
//Aspect Ratio
float image1AspectRatio_LessOne = ( imageWidth1 >= imageHeight1 ) ? float(imageWidth1)/float(imageHeight1) : float(imageHeight1)/float(imageWidth1);
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
float imageHeightAdjusted1 = ( imageWidth1 >= imageDivWidth ) ? imageWidthAdjusted1 * image1AspectRatio_LessOne : imageWidthAdjusted1 / image1AspectRatio_LessOne;  
//
rect(imageDivX, imageDivY, imageDivWidth, imageDivHeight);
//
//image(imageDivX, imageDivY, imageDivWidth, imageHeight);
image(image1, imageDivX, imageDivY, imageWidthAdjusted1, imageHeightAdjusted1);
//
//End Program

fullScreen(); //Display : Potrait
//size(500, 250);
int appWidth = displayWidth;
int appHeight = displayHeight;
//
float imageDivX = appWidth* 2.5/8;
float imageDivY = appHeight* 2.5/8;
float imageDivWidth = appWidth* 3/8;
float imageDivHeight = appHeight* 3/8;
//Image Aspect Ratio Vars & Algorithm
//Concatenation
String upArrow = "../../";
String folder = "Images/";
String JaguarCar = "JaguarCar";
String fileExtensionJPG = ".jpg";
String imagePathway1 = upArrow + folder + JaguarCar + fileExtensionJPG;
println("JaguarCar Pathway:", imagePathway1);
//Image Loading
PImage image1 = loadImage(imagePathway1);
int imageWidth1 = 3840 ;
int imageHeight1 = 1560 ;
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
if (imageHeightAdjusted1 > imageDivHeight);
//
int indexWhile = 0;
//
  while ( imageHeightAdjusted1>imageDivHeight ) {
    println("Iteration of Percent WHILE Loop", indexWhile++); //prints value, then adds one, order is important in AP
    if ( indexWhile < 10000 ) {
      //Checking Image Size, below
} else {
println("ERROR: infinite loop, Image Percent WHILE, value:", indexWhile);
exit(); //doesn't work, must force WHILE Stop
      imageHeightAdjusted1=imageDivHeight; //makes WHILE False, stops WHILE
    } 
    imageWidthAdjusted1 *= 0.70; // -= 1
    imageHeightAdjusted1 = imageWidthAdjusted1/image1AspectRatio_LessOne;
    println("Inspection of percent decrase:", imageWidthAdjusted1, imageHeightAdjusted1, imageDivHeight);
  }
rect(imageDivX, imageDivY, imageDivWidth, imageDivHeight);
//
//image(imageDivX, imageDivY, imageDivWidth, imageHeight);
image(image1, imageDivX, imageDivY, imageWidthAdjusted1, imageHeightAdjusted1);
//
//End Program

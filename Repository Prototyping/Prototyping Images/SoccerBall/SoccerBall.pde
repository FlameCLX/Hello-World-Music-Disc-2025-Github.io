/* Aspect Ratio: Bike Only Demonstration
- Old Man 
*/
//
//Display
fullScreen(); //Landscape
//size(500, 700); //Portrait
int appWidth = displayWidth; //width
int appHeight = displayHeight; //height
//println("Display VARS:", "appWidth:"+appWidth, "appHeight:"+appHeight, "\n\t\t\t\t\t\t\t\t\tFullScreen, displayWidth:"+displayWidth, "displayHeight:"+displayHeight, "\n\t\t\t\t\t\t\t\t\tSize\t\t, width:"+width, "height:"+height);
//
//Population
float imageDivX = appWidth*1/4; //**Akward DIV
float imageDivY = appHeight*1/10;
float imageDivWidth = appWidth*1/2;
float imageDivHeight = appHeight*4/5;
//
//Image Aspect Ratio Vars & Algorithm
String upArrow = "../../";
String folder = "Lesson Dependancies Folder/Images/";
String bike = "bike";
String fileExtensionJPG = ".jpg";
String imagePathway1 = upArrow + folder + bike + fileExtensionJPG;
//println("Bike Pathway:", imagePathway1);
//Image Loading & Aspect Ratio
PImage image1 = loadImage( imagePathway1 );
int imageWidth1 = 860; //Hardcoded
int imageHeight1 = 529; //Hardcoded
//Aspect Ratio
float image1AspectRatio_GreaterOne = ( imageWidth1 >= imageHeight1 ) ? imageWidth1/imageHeight1 : imageHeight1/imageWidth1 ; //Ternary Operator
//Hardcoded Greater-Than-One Aspect Ratio
//println(image1AspectRatio_GreaterOne);
//
rect( imageDivX, imageDivY, imageDivWidth, imageDivHeight );
//
image( image1, imageDivX, imageDivY, imageDivWidth, imageDivHeight );
//image( image1, imageDivX, imageDivY, imageWidthAdjusted, imageHeightAdjusted );

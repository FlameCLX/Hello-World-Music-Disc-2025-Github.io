
void colourPopulation() {
  nightModeVariables();
  buildingColours();
}//End Colour Population
//
void nightModeVariables() {
  if (nightMode==false) {
    nightMode=true;
  } else {
    nightMode=false;
  }
}//End Night Mode Variables
//
void buildingColours() {
  color black = 0; //Gray Scale, much smaller color, 256 bits
  color white = 255; //Gray Scale
  color grayScale = 256/2; //Example Gray Scale, small memory
  color gray = #B9B9B9; //Example Gray Scale, large memory
  //CANVAS: default background and ink
  resetBackgroundDay = white;
  resetInkDay = black;
  resetBackgroundNight = 256/4;
  resetInkNight = int(256*0.75); // 3/4 of origoinal, not 1/4
  //println("Casting answer is:", resetInkNight); //Exactly 192, no rounding invovled, checked on calculator
  //Button Colours: layering local variables leads to preferences controled by Booleans
  color red = #FF0000;
  color purple = #9D03FF; //human name for hexidecimal code
  color yellow = #FFFF00;
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
    playColourSymbol = yellow;
    playColourBackgroundActivated = yellow;
    playColourSymbolActivated = purple;
    quitBackground = white;
    quitBackgroundActivated = red;
    quitButtonInk = black;
  } //End Night Mode Colors
}//End Building Colours
//
//End Colour Population

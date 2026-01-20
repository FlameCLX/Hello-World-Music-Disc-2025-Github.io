
/* List of Buttons and Code Colours
 - Quit
 - Play, Boolean Only
 */
void quitButtonActive() {
  fill(quitBackgroundActivated);
  rect(quitDivX, quitDivY, quitDivWidth, quitDivHeight);
  fill(resetBackground);
  fill(quitButtonInk);
  //Note: rect() starts top-right corner, text() starts bottom-right corner
  text("X", quitDivX+quitDivWidth*1/2, quitDivY+quitDivHeight*3/5); //adjust fractions or decimals until working
  fill(resetInk);
} //End Quit Button Active
//
void quitButtonRegular() {
  fill(quitBackground);
  rect(quitDivX, quitDivY, quitDivWidth, quitDivHeight);
  fill(resetBackground);
  fill(quitButtonInk);
  //Note: rect() starts top-right corner, text() starts bottom-right corner
  text("X", quitDivX+quitDivWidth*1/2, quitDivY+quitDivHeight*3/5); //adjust fractions or decimals until working
  fill(resetInk);
} //End Quit Button Active
//
void playButtonActive() {
  fill(playColourBackgroundActivated);
  rect(playDivX, playDivY, playDivWidth, playDivHeight);
  fill(playColourSymbolActivated);
  triangle(playSymbolX1, playSymbolY1, playSymbolX2, playSymbolY2, playSymbolX3, playSymbolY3);
  fill(resetBackground);
} // End Play Button Active
//
void playButtonReady() {
  fill(playColourBackground);
  rect(playDivX, playDivY, playDivWidth, playDivHeight);
  fill(playColourSymbol);
  triangle(playSymbolX1, playSymbolY1, playSymbolX2, playSymbolY2, playSymbolX3, playSymbolY3);
  fill(resetBackground);
} // End Play Button Ready
//
// End Button Subprogram

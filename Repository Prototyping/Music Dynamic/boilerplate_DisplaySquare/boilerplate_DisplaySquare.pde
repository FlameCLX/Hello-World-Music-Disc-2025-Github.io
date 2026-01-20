void settings() {
  println(displayWidth, displayHeight);
  int shorterSide = ( displayWidth > displayHeight ) ? displayHeight : displayWidth ; //Ternary Operator
  shorterSide *= 0.9; //90%, WINDOW Frame
  size(shorterSide, shorterSide); //ERROR IllegalStateException: cannot use a var in size()
} //End settings
//
void setup() {
  /* ERROR IllegalStateException: cannot use a var in size()
   println(displayWidth, displayHeight);
   int shorterSide = ( displayWidth > displayHeight ) ? displayHeight : displayWidth ; //Ternary Operator
   size(shorterSide, shorterSide); //
   */
  //fullScreen(); //displayWidth, displayHeight
} //End setup
//
void draw() {
} //End draw
//
void mousePressed() {
} //End Mouse Pressed
//
void keyPressed() {
} //End Key Pressed
//
//End MAIN Program

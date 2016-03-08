////Caleb Herrera
////Project 1

float sunX, sunY;  // Position of sun
float x, y;        // Position and speed of creature
float dx, dy;
float horizon;

//// SETUP: Define screen size, set modes.
void setup() {
  size(500, 400);
  reset();
}
void reset() {
sunX= width;  //Sun moves across the screen.
sunY= 50;
x= width/2;  // start creature in center.
y= height/2;  
dx= random(1, 3); // Random speed.
dy= random(-1, +1);
}

///DRAW: sky, tree, sun and creature

void draw()
{
  scene();
  action();
  show();
  messages();    
}

//// SCENE: sky, sun, house, tree.
void scene() {
  background( 0, 100, 255);  // Blue sky
  horizon = height/2;
  fill(0, 255, 0);
  rect( 0, horizon, width, height);
  fill(255, 255, 0);
  ellipse( sunX, sunY, 30, 30);    // Yellow sun
  fill(255, 0, 0);
  rect(200, horizon, 100, -50);   //Red house
  triangle( 190, horizon -50, 310, horizon -50, 250, horizon -50 -40);
  noStroke();
  rect( 280, horizon -50, 10, -40);
  fill(88, 51, 6);
  rect(400, horizon, 20, -50);  // Tree
  fill(0, 255, 0);
  ellipse( 410, 130, 50, 70);
}

//// MESSAGES.
void messages() {
  fill(0);
  text( "Caleb Herrera", width/3, 10);
  text( "Project1", width/3, 20);
}

////ACTION: sun moves (then resets to random height)
void action() {
  if (sunX > width) {
    sunX= 0;
    sunY= random(20, 180);
  }
  sunX = sunX + 1;
  // Move the creature. 
  x= x + dx;
  y= y + dy;
}

////SHOW: creature follows mouse
void show() {
  // Draw creature.
  fill(255);
 ellipse( x+25,y+25, 30, 60 );                 // white creature
  ellipse( x+25, y-20, 40, 40 );       // Head on top
  // Eyes.
  fill(0);
  ellipse( x+15, y-25, 12, 12 );
  ellipse( x+35, y-25, 12, 12 );
  
}
    
//// EVENT HANDLERS ////
void mousePressed() {
  reset();
  // Set the position (x,y)
  x=  mouseX;
  y=  mouseY;
}

  


  

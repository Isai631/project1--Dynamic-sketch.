////Caleb Herrera
////CST112  
////Project1
////Snowman

////SETUP

size( 500, 400);
background(0);


////DRAW STARS

stroke(255);
fill(255); //color of stars

triangle( 50, 40, 30, 70, 70, 70);
triangle( 30, 50, 70, 50, 50, 80); //first star on left side

triangle( 120, 40, 100, 70, 140, 70); 
triangle( 100, 50, 140, 50, 120, 80); //second star on left side

triangle( 85, 120, 65, 150, 105, 150);
triangle( 65, 130, 105, 130, 85, 160); //third star on left side

triangle( 380, 40, 400, 70, 360, 70);
triangle( 360, 50, 400, 50, 380, 80); //first star on right side

triangle( 450, 40, 430, 70, 470, 70);
triangle( 470, 50, 430, 50, 450, 80); //second star on right side

triangle( 415, 120, 395, 150, 435, 150);
triangle( 395, 130, 435, 130, 415, 160); //third star on right side


////DRAW SNOWMAN

ellipse( 250, 100, 80, 80); //head
ellipse( 250, 170, 100, 80); //body part 1
ellipse( 250, 250, 140, 120); //body part 2

stroke(0);
fill(255, 120, 0);
triangle( 250, 100, 250, 110, 310, 105); //orange nose

fill(0);
ellipse( 235, 90, 10, 15); //left eye
ellipse( 265, 90, 10, 15); //right eye

stroke(116, 82, 8); //brown arms and figers
line( 150, 150, 235, 170); //left arm
line( 160, 151, 150, 141); //finger
line( 160, 151, 150, 161); //finger

line( 350, 150, 260, 170); //right arm
line( 340, 151, 350, 140); //finger
line( 340, 151, 350, 160); //finger


////DRAW RED HAT

stroke(255, 0, 0);
fill(255, 0, 0);
rect( 210, 55, 80, 20);
rect( 225, 10, 50, 60); 


////NAME OF AUTHOR 

fill(255);
text( "Caleb Herrera", 30, 350);
text( "Project 1", 30, 370);

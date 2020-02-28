// Pressing Control-alt-b will render this sketch (if you have the atom extension configured and the file saved in a containing folder in your Processing folder)
import processing.sound.*;
SawOsc saw;

//globals (gross haha) <--michael

int i = 0;
float rect_x1 = 1;
float rect_y1 = 1;


public void settings() {
  size(300, 300, "processing.opengl.PGraphics3D");
}

// this runs once.
void setup() {

    // set the background color
    background(255);

    // smooth edges,
    smooth();

    // limit the number of frames per second
    frameRate(30);

    // set the width of the line.
    strokeWeight(2);

  // Create square wave oscillator.
  saw = new SawOsc(this);
  saw.play();
}

// this runs repeatedly (frames per sec).
void draw() {

    // draw line
    // line(i, 0, random(0, width), height);

    // the frequency of sound is affected by mouse movement
    saw.freq(400-mouseX);

    noFill();
    stroke(random(50), random(255), random(255), 255);
    curve(rect_x1,  +rect_y1 , random(0,width) , random(0,width), random(0,width), random(0,width), random(0,width), random(0,width));
    curve(5 + rect_x1, 26 +rect_y1 , 73, 24, 73, 61, 15, 65);
    curve(73 + rect_x1, 24 + rect_y1 , 73, 61, 15, 65, 15, 65);

    //stroke(random(50), random(255), random(255), 100);
    //rect(mouseX, mouseY, 40, 140);

    translate(width/2, height/2);
    rotateY(radians(60));
    rect(-26, -26, 52, 52);

}

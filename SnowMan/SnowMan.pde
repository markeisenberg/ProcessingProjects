/**
 * shows how to create a sequence of animations (timeline)
 *    
 * KEYS
 * space           : toggle, pause and resume sequence
 * s               : start or restart sequence
 
 
 Pine Tree from: http://www.openprocessing.org/sketch/165817
 
 Based on 'Sequence Basics' code from: http://benedikt-gross.de/libraries/Ani/
 */

import de.looksgood.ani.*;

float x, y, x2, y2, x3, y3, diameter;
AniSequence seq;
AniSequence seqSnowman;

void setup() {
  size(900,850);
  smooth();
  noStroke();
  textAlign(CENTER);
  background(216);

  x = 150;
  y = 150;
  x2 = 800;
  y2 = -10;
  x3 = 800;
  y3 = -10;
  diameter = 20;

  // Ani.init() must be called always first!
  Ani.init(this);

  // create a sequence
  // dont forget to call beginSequence() and endSequence()
  seq = new AniSequence(this);
  seq.beginSequence();
  
  // step 0
  seq.add(Ani.to(this, 1.5, "diameter", 40));

  // step 1
  seq.add(Ani.to(this, 1.5, "x:75,y:150"));
  
  // step 2
  seq.add(Ani.to(this, 1.5, "x:75,y:225"));
  
  // step 3
  seq.add(Ani.to(this, 1.5, "x:150,y:225"));
  
  //s4
  seq.add(Ani.to(this, 1.5, "x:150,y:300"));
  
  //s5
  seq.add(Ani.to(this, 1.5, "x:75,y:300"));
  
  //s6
  seq.add(Ani.to(this, 1.5, "x:225,y:300"));
  
  //s7
  seq.add(Ani.to(this, 1.5, "x:225,y:150"));
  
  //s8
  seq.add(Ani.to(this, 1.5, "x:300,y:300"));
  
  //s9
  seq.add(Ani.to(this, 1.5, "x:300,y:150"));
  
  //s10
  seq.add(Ani.to(this, 1.5, "x:450,y:150"));
  
  //s11
  seq.add(Ani.to(this, 1.5, "x:450,y:300"));
  
  //s11
  seq.add(Ani.to(this, 1.5, "x:375,y:300"));
  
  //s12
  seq.add(Ani.to(this, 1.5, "x:375,y:150"));
  
  //s13
  seq.add(Ani.to(this, 1.5, "x:525,y:150"));
  
  //s14
  seq.add(Ani.to(this, 1.5, "x:600,y:300"));
  
  //s15
  seq.add(Ani.to(this, 1.5, "x:675,y:150"));
  
  //s16
  seq.add(Ani.to(this, 1.5, "x:725,y:300"));
  
  //s17
  seq.add(Ani.to(this, 1.5, "x:800,y:150"));
  
  //s18
  seq.add(Ani.to(this, 2, "x:800,y:300"));
  
  // step 19
  seq.beginStep();
  seq.add(Ani.to(this, 2, "diameter", 100));
  seq.endStep();
  
  //s20
  seq.add(Ani.to(this, 2, "x2:800,y2:240", Ani.BOUNCE_OUT));
  
  //s21
  seq.add(Ani.to(this, 2, "x3:800,y3:190", Ani.BOUNCE_OUT));

  seq.endSequence();
  
  // start the whole sequence
  seq.start();
  
  stroke(0, 153, 76, 30);

}

void draw() {
  fill(216,9);
  rect(0,0,width,height);
  
  //println(seq.isFinished());

  fill(255);
  ellipse(x,y,diameter,diameter);
  ellipse(x2, y2, 75, 75);
  ellipse(x3, y3, 40, 40);
  
  translate(width/2, height-240);
  for (int i = -360; i < 0; i+=12) {
    for (int q = 0; q < 360; q+=30) {
      float x = sin(radians(i)) * (360-q)/2;
      float y = -q+cos(radians(i)) * (360-q)/30;
      strokeWeight(12-q/30);
      line(0, -q+80, x, y);
    }
  }

}

// pause and resume animation by pressing SPACE
// or press "s" to start the sequence
void keyPressed() {
  if (key == 's' || key == 'S') seq.start();
  if (key == ' ') {
    if (seq.isPlaying()) seq.pause();
    else seq.resume();
  }
}
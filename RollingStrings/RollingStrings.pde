import geomerative.*;
import fontastic.*;
import processing.pdf.*;
import java.util.*;
boolean doSave = false;

Fontastic f;
RFont font;
RPoint[] myPoints; 
String myText = "Wild Type";
RGroup myGroup;

//----------------SETUP---------------------------------
void setup() {
  size(800,300);
  background(255);
  smooth();
  RG.init(this); 
  font = new RFont("riffic.ttf", 100, CENTER);
  
  //Moved to keyPressed
}

//----------------DRAW---------------------------------
void draw() {
  if (doSave) beginRecord(PDF, timestamp()+".pdf");
  background(255);
  stroke(255,0,0);
  noFill();
  translate(width/2, height/1.7);

  RCommand.setSegmentLength(map(mouseX, width, 0, 3, 100));
  RCommand.setSegmentator(RCommand.UNIFORMLENGTH);

  if (myText.length() > 0) {
    RGroup myGroup = font.toGroup(myText); 
    myGroup = myGroup.toPolygonGroup();
    RPoint[] myPoints = myGroup.getPoints();

    beginShape();
    for(int i=0; i<myPoints.length; i++) {
      //vertex(myPoints[i].x, myPoints[i].y); 
      curveVertex(myPoints[i].x, myPoints[i].y);
      ellipse(myPoints[i].x, myPoints[i].y, 5, 5);
    }
    endShape();
   
    
    // ------ SAVING  ------ 
    if (doSave) {
      doSave = false;
      endRecord();
      saveFrame(timestamp()+".png");
      println("I printed the font !");
    }
  }
}

//----------------KEYS---------------------------------
void keyReleased() {
  if (keyCode == SHIFT) doSave = true;
}

void keyPressed() {
  if(key !=CODED) {
    switch(key) {
    case DELETE:
    case BACKSPACE:
      myText = myText.substring(0,max(0,myText.length()-1));
      break;
    case ENTER:
      break;
    default:
      myText +=key;
    }
  }
  if(key=='s'){
    
    //Does not export the correct font
     Fontastic f = new Fontastic(this, "RifficMark");
  f.setVersion("1.0");
  f.setAdvanceWidth(300);
  
  f.buildFont();

   f.cleanup();
    
   PFont myGroup = createFont(f.getTTFfilename(), 8);
    
   textFont(myGroup);
  }
}

//----------------TIMESTAMP---------------------------------
String timestamp() {
  Calendar now = Calendar.getInstance();
  return String.format("%1$ty%1$tm%1$td_%1$tH%1$tM%1$tS", now);
}
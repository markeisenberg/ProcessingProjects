 /**
 * Fontastic
 * Letter frequency taken from: http://en.wikipedia.org/wiki/Letter_frequency
 *
 * edited by Mark Eisenberg - 116453
 * @originalauthor      Andreas Koller http://andreaskoller.com
 */
 
import fontastic.*;
import java.util.*;


Fontastic f;


void setup() {

  size(600, 600);
  fill(0);

  createFont();

}


void draw() {

  background(255);

  PFont myFont = createFont(f.getTTFfilename(), 60);

  textFont(myFont);
  textAlign(CENTER, CENTER);

  text(new String(Fontastic.alphabet), width/2, height/4);

  text(new String(Fontastic.alphabetLc), width/2, height/4*3);

  noLoop();

}

void createFont() {

  f = new Fontastic(this, "MajoraGiant");

  f.setAdvanceWidth(300);

  String lines[] = loadStrings(dataPath("letterfrequenciesgerman.txt"));
  HashMap<Character, Float> letterFreq = new HashMap<Character, Float>();
  for (String s : lines) {
    if (s.startsWith("#")) continue;
    String[] values = split(s, '\t');
    Character c = values[0].charAt(0);
    Float freq = Float.parseFloat(values[1]);
    letterFreq.put(c, freq);
  }

  Float maxFreq = (Collections.max(letterFreq.values()));

  for (Map.Entry entry : letterFreq.entrySet()) {

    Character c = (Character) entry.getKey();

    float value = (Float) entry.getValue();
    float h = map(value, 0, maxFreq, 0, 2048);

    float d = 120;
    PVector[] points = new PVector[0];
        
    points = (PVector[]) append(points, new PVector(0, 0));
    points = (PVector[]) append(points, new PVector(0, h));
    points = (PVector[]) append(points, new PVector(d, h));
    points = (PVector[]) append(points, new PVector(d, 0));
    
    points = (PVector[]) append(points, new PVector(0, h));
    points = (PVector[]) append(points, new PVector(d, 130+h/2));
    points = (PVector[]) append(points, new PVector(200+d/2, 45+h/2));
    points = (PVector[]) append(points, new PVector(67+d/2, h));
    
    f.addGlyph(c).addContour(points);

    PVector[] pointsLc = new PVector[points.length];

    for (int i=0; i<pointsLc.length; i++) {
      pointsLc[i] = new PVector();
      pointsLc[i].x = points[i].x * 0.5;
      pointsLc[i].y = points[i].y;
    }

    f.addGlyph(Character.toLowerCase(c)).addContour(pointsLc);
  }
  
  f.buildFont();
  
  f.cleanup();
  
}
import rita.*;
import java.util.*;
import processing.pdf.*;

boolean doSave = false;

RiGrammar grammar;

PShape svg, svg2, svg3, svg4, svg5, svg6, svg7, svg8, svg9, svg10, svg11, svg12,
svg13, svg14, svg15, svg16, svg17, svg18, svg19, svg20, svg21, svg22, svg23, svg24,
svg25, svg26;

String[] lines = {"click to", "generate", "a haiku"};
String man = "man";
String speak = "speak";
String tool = "tool";
String up = "up";
String down = "down";
String noise = "noise";
String sounds = "sounds";
String child = "child";
String sun = "sun";
String sky = "sky";
String action = "action";
String shelter = "shelter";
String woman = "woman";
String smaller = "smaller";
String larger = "larger";
String object = "object";
String higher = "higher";
String family = "family";
String positive = "positive";
String animal = "animal";
String negative = "negative";
String flowingrapids = "flowing rapids";
String generation = "generation";
String celebration = "celebration";
String vegetable = "vegetable";
String technology = "technology";
String enthusiastic = "enthusiastic";
String photosynthesis = "photosynthesis";
String eye = "eye";
String water = "water";
String look = "look";
String see = "see";
String past = "past";
String left = "left";
String air = "air";
String tree = "tree";
String listen = "listen";
String forest = "forest";
String mountain = "mountain";
String lower = "lower";
String civilisation = "civilisation";
String moon = "moon";

void setup()
{
  size(650, 500);

  fill(0);
  textSize(30);
  textAlign(CENTER);

  grammar = new RiGrammar(this);
  grammar.loadFrom("haikugeks.yaml");
  
  svg = loadShape("SVG/ManLetterTest.svg");
  svg2 = loadShape("SVG/woman.svg");
  svg3 = loadShape("SVG/smaller.svg");
  svg4 = loadShape("SVG/larger.svg");
  svg5 = loadShape("SVG/usetool.svg");
  svg6 = loadShape("SVG/object.svg");
  svg7 = loadShape("SVG/uphigher.svg");
  svg8 = loadShape("SVG/downlower.svg");
  svg9 = loadShape("SVG/action.svg");
  svg10 = loadShape("SVG/soundhear.svg");
  svg11 = loadShape("SVG/child.svg");
  svg12 = loadShape("SVG/sun.svg");
  svg13 = loadShape("SVG/moon.svg");
  svg14 = loadShape("SVG/shelter.svg");
  svg15 = loadShape("SVG/water.svg");
  svg16 = loadShape("SVG/eye.svg");
  svg17 = loadShape("SVG/positive.svg");
  svg18 = loadShape("SVG/negative.svg");
  svg19 = loadShape("SVG/leftpast.svg");
  svg20 = loadShape("SVG/family.svg");
  svg21 = loadShape("SVG/listen.svg");
  svg22 = loadShape("SVG/air.svg");
  svg23 = loadShape("SVG/speak.svg");
  svg24 = loadShape("SVG/mountain.svg");
  svg25 = loadShape("SVG/tree.svg");
  svg26 = loadShape("SVG/animal.svg");
}

void draw()
{
  if (doSave) beginRecord(PDF, timestamp()+".pdf");
  background(230, 240, 255);
  for (int i = 0; i < lines.length; i++)
    text(lines[i], width / 2, 75 + i * 35);
    
    // ------ SAVING  ------ 
    if (doSave) {
      doSave = false;
      endRecord();
      saveFrame(timestamp()+".png");
      println("I printed the font !");
    }
    
    shape(svg, 97, 251, 52, 52);
    shape(svg2, 144, 247, 58, 55);
  shape(svg3, 196, 244, 56, 59);
  shape(svg4, 244, 245, 53, 51);
  shape(svg5, 294, 244, 55, 53);
  shape(svg6, 345, 240, 55, 60);
  shape(svg7, 405, 253, 52, 43);
  shape(svg8, 455, 250, 50, 47);
  shape(svg9, 513, 243, 57, 57);
  shape(svg10, 95, 320, 56, 56);
  shape(svg11, 141, 325, 61, 47);
  shape(svg12, 205, 330, 41, 40);
  shape(svg13, 242, 316, 59, 56);
  shape(svg14, 300, 327, 42, 40);
  shape(svg15, 352, 318, 46, 45);
  shape(svg16, 409, 317, 42, 40);
  shape(svg17, 451, 312, 62, 57);
  shape(svg18, 512, 308, 60, 60);
  shape(svg19, 93, 380, 58, 65);
  shape(svg20, 143, 381, 57, 62);
  shape(svg21, 211, 389, 61, 57);
  shape(svg22, 284, 380, 71, 72);
  shape(svg23, 340, 380, 69, 66);
  shape(svg24, 410, 392, 43, 34);
  shape(svg25, 453, 378, 64, 74);
  shape(svg26, 503, 364, 78, 72);
    
}

void keyReleased() {
  if (keyCode == SHIFT) doSave = true;
}

void mouseReleased()
{
  String result = grammar.expand();
  String[] haiku = result.split("%");
  for (int i = 0; i < lines.length; i++)
    lines[i] = haiku[i];
        
    //check for man
    if (result.contains(man) == true){
      svg.setVisible(true);
    }else{
      svg.setVisible(false);
    }
    
    //check for speak
    if (result.contains(speak) == true){
      svg23.setVisible(true);
    }else{
      svg23.setVisible(false);
    }
    
    //check for tool
    if (result.contains(tool) == true){
      svg5.setVisible(true);
    }else{
      svg5.setVisible(false);
    }
    
    //check for up
    if (result.contains(up) == true || result.contains(higher) == true){
      svg7.setVisible(true);
    }else{
      svg7.setVisible(false);
    }
    
    //check for down
    if (result.contains(down) == true|| result.contains(lower) == true){
      svg8.setVisible(true);
    }else{
      svg8.setVisible(false);
    }
    
    //check for noise
    if (result.contains(down) == true || result.contains(sounds) == true){
      svg10.setVisible(true);
    }else{
      svg10.setVisible(false);
    }
    
    //check for child
    if (result.contains(child) == true){
      svg11.setVisible(true);
    }else{
      svg11.setVisible(false);
    }
    
    //check for sun
    if (result.contains(sun) == true){
      svg12.setVisible(true);
    }else{
      svg12.setVisible(false);
    }
    
    //check for sky
    if (result.contains(sky) == true){
      svg22.setVisible(true);
      svg7.setVisible(true);
    }else{
      svg22.setVisible(false);
      svg7.setVisible(false);
    }
    
    //check for action
    if (result.contains(action) == true){
      svg9.setVisible(true);
    }else{
      svg9.setVisible(false);
    }
    
    //check for shelter
    if (result.contains(shelter) == true){
      svg14.setVisible(true);
    }else{
      svg14.setVisible(false);
    }
    
    //check for woman
    if (result.contains(woman) == true){
      svg2.setVisible(true);
    }else{
      svg2.setVisible(false);
    }
    
    //check for smaller
    if (result.contains(smaller) == true){
      svg3.setVisible(true);
    }else{
      svg3.setVisible(false);
    }
    
    //check for larger
    if (result.contains(larger) == true){
      svg4.setVisible(true);
    }else{
      svg4.setVisible(false);
    }
    
    //check for object
    if (result.contains(object) == true){
      svg6.setVisible(true);
    }else{
      svg6.setVisible(false);
    }
    
    //check for family
    if (result.contains(family) == true){
      svg20.setVisible(true);
    }else{
      svg20.setVisible(false);
    }
    
    //check for positive
    if (result.contains(positive) == true || result.contains(enthusiastic) == true){
      svg17.setVisible(true);
    }else{
      svg17.setVisible(false);
    }
    
    //check for animal
    if (result.contains(animal) == true){
      svg26.setVisible(true);
    }else{
      svg26.setVisible(false);
    }
    
    //check for negative
    if (result.contains(negative) == true){
      svg18.setVisible(true);
    }else{
      svg18.setVisible(false);
    }
    
    //check for flowingrapids
    if (result.contains(flowingrapids) == true){
      svg4.setVisible(true);
      svg15.setVisible(true);
    }else{
      svg4.setVisible(false);
      svg15.setVisible(false);
    }
    
    //check for generation
    if (result.contains(generation) == true){
      svg19.setVisible(true);
      svg20.setVisible(true);
      svg11.setVisible(true);
    }else{
      svg19.setVisible(false);
      svg20.setVisible(false);
      svg11.setVisible(false);
    }
    
    //check for celebration
    if (result.contains(celebration) == true){
      svg20.setVisible(true);
      svg17.setVisible(true);
      svg13.setVisible(true);
    }else{
      svg20.setVisible(false);
      svg17.setVisible(false);
      svg13.setVisible(false);
    }
    
    //check for vegetable
    if (result.contains(vegetable) == true){
      svg25.setVisible(true);
      svg11.setVisible(true);
    }else{
      svg25.setVisible(false);
      svg11.setVisible(false);
    }
    
    //check for technology
    if (result.contains(technology) == true){
      svg7.setVisible(true);
      svg5.setVisible(true);
    }else{
      svg5.setVisible(false);
      svg7.setVisible(false);
    }
    
    //check for photosynthesis
    if (result.contains(photosynthesis) == true){
      svg25.setVisible(true);
      svg12.setVisible(true);
      svg9.setVisible(true);
    }else{
      svg25.setVisible(false);
      svg12.setVisible(false);
      svg9.setVisible(false);
    }
    
    //check for civilisation
    if (result.contains(civilisation) == true){
      svg5.setVisible(true);
      svg7.setVisible(true);
      svg20.setVisible(true);
    }else{
      svg5.setVisible(false);
      svg7.setVisible(false);
      svg20.setVisible(false);
    }
    
    //check for moon
    if (result.contains(moon) == true){
      svg13.setVisible(true);
    }else{
      svg13.setVisible(false);
    }
    
    //check for eye
    if (result.contains(eye) == true){
      svg16.setVisible(true);
    }else{
      svg16.setVisible(false);
    }
    
    //check for look, see
    if (result.contains(look) == true || result.contains(see) == true){
      svg16.setVisible(true);
      svg9.setVisible(true);
    }else{
      svg16.setVisible(false);
      svg9.setVisible(false);
    }
    
    //check for past, left
    if (result.contains(past) == true || result.contains(left) == true){
      svg19.setVisible(true);
    }else{
      svg19.setVisible(false);
    }
    
//check for air
    if (result.contains(air) == true){
      svg22.setVisible(true);
    }else{
      svg22.setVisible(false);
    }
    
    //check for tree
    if (result.contains(tree) == true || result.contains(forest) == true){
      svg25.setVisible(true);
    }else{
      svg25.setVisible(false);
    }
    
    //check for water
    if (result.contains(water) == true){
      svg15.setVisible(true);
    }else{
      svg15.setVisible(false);
    }
    
    //check for listen
    if (result.contains(listen) == true){
      svg21.setVisible(true);
    }else{
      svg21.setVisible(false);
    }
    
    //check for mountain
    if (result.contains(mountain) == true){
      svg24.setVisible(true);
    }else{
      svg24.setVisible(false);
    }
}

//----------------TIMESTAMP---------------------------------
String timestamp() {
  Calendar now = Calendar.getInstance();
  return String.format("%1$ty%1$tm%1$td_%1$tH%1$tM%1$tS", now);
}
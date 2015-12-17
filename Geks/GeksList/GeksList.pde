PShape svg, svg2, svg3, svg4, svg5, svg6, svg7, svg8, svg9, svg10, svg11, svg12,
svg13, svg14, svg15, svg16, svg17, svg18, svg19, svg20, svg21, svg22, svg23, svg24,
svg25, svg26;

void setup() {
  size(640, 360, P2D);
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

void draw() {
  background(255);
  shape(svg, 0, 3, 15, 40);
  shape(svg2, 78, 3, 15, 40);
  shape(svg3, 153, 3, 15, 40);
  shape(svg4, 231, 4, 20, 42);
  shape(svg5, 302, 3, 25, 40);
  shape(svg6, 373, -7, 34, 40);
  shape(svg7, 454, 11, 15, 40);
  shape(svg8, 529, 10, 15, 40);
  shape(svg9, -2, 96, 35, 40);
  shape(svg10, 78, 96, 38, 40);
  shape(svg11, 152, 98, 15, 47);
  shape(svg12, 228, 97, 41, 40);
  shape(svg13, 303, 87, 33, 32);
  shape(svg14, 384, 100, 36, 40);
  shape(svg15, 456, 93, 39, 40);
  shape(svg16, 519, 80, 42, 40);
  shape(svg17, -5, 186, 30, 40);
  shape(svg18, 74, 184, 30, 40);
  shape(svg19, 150, 184, 25, 40);
  shape(svg20, 228, 182, 44, 40);
  shape(svg21, 301, 185, 58, 40);
  shape(svg22, 385, 181, 35, 19);
  shape(svg23, 448, 185, 37, 40);
  shape(svg24, 531, 181, 48, 34);
  shape(svg25, -14, 262, 34, 40);
  shape(svg26, 70, 257, 47, 40);
  
  //grid code from https://processing.org/discourse/beta/num_1194739467.html
  for(int i=0; i<width; i+=75){
   line(i,0,i,height);
 }
 for(int w=0; w<height; w+=90){
   line(0,w,width,w);
 }
 
String lines = "Man\nAction\nPositive\nTree";
String lines2 = "Woman\nSound\nNegative\nAnimal";
String lines3 = "Smaller\nChild\nLeft/Past\nEnd";
String lines4 = "Larger\nSun\nFamily";
String lines5 = "Tool\nMoon\nListen";
String lines6 = "Object\nShelter\nAir";
String lines7 = "Up/High\nWater\nSpeak";
String lines8 = "Down/Low\nEye\nMountain";

textSize(12);
fill(0);

textLeading(91);
text(lines, 19, 80);

textLeading(91);
text(lines2, 90, 80);

textLeading(91);
text(lines3, 165, 80);

textLeading(91);
text(lines4, 246, 80);

textLeading(91);
text(lines5, 322, 80);

textLeading(91);
text(lines6, 396, 80);

textLeading(91);
text(lines7, 466, 80);

textLeading(91);
text(lines8, 536, 80);

textSize(32);
text("//", 170, 316);
}
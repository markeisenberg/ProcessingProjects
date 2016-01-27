//Code Version by Mark Eisenberg
//Matrikelnummer: 116453

import peasy.*;

int n = 4;

PShape[] shapes = new PShape[n];

PeasyCam cam;
int d = 30;


void setup() {
  
  colorMode(HSB);
  
  // create canvas
  size(500, 500, P3D);

  // create camera
  cam = new PeasyCam(this, 5*d);

  // configure camera
  cam.setMinimumDistance(5*d);
  cam.setMaximumDistance(500);

  // load 3d shape files for the a, b, c
  for(int i = 0; i < n; i++) {
    char c = char('a' + i);
    shapes[i] = loadShape(c + ".obj");
  }

}

void draw() {
  
  // reset random generator
  randomSeed(0);
  
  // in the beginning there was nothing ...
  background(0);

  // let there be light ...
  ambientLight(0, 0, 128);               // global illumination
  directionalLight(0, 0, 128, 0, 0, -1); // front light
  directionalLight(0, 0, 128, 0, 0, 1);  // back light
  
  // draw some shapes
  translate(-d * 3, 0, 0);
  text3D("abcd", d);
  
}


void text3D(String s, float d) {
  
  pushMatrix();
  
  for(int i = 0; i < s.length(); i++) {
    
    int idx = int(s.charAt(i) - 'a');
    
    //assert
    translate(d, 0, 0);
    
    // get shape and color it
    PShape shp = shapes[idx];
    shp.setFill(color(random(255), 255, 255));
    shape(shp);

  }
  
  popMatrix();
  
}
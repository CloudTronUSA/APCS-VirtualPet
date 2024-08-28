// image
// elements seperated by ';', first element define colors; later ones define image
String image = "FFFFFFFF,FF262431,FF1A1825,FFEAEAEA,FF5D9D15,FF565461,FFBF7373,FFB0B0B0;0;1;0;1;0;2;2;2;2;2;3;4;2;4;3;2;5;6;5;2;2;7;7;7;2";
int imgGridX = 5;
int imgGridY = 5;
int imgGridSizeScale = 80;

void setup() {
  //init the image
  size(400, 400);
  stroke(0); // Black stroke color
  //noFill(); // No fill
  String[] colorStr = split(split(image, ';')[0], ',');
  int[] colors = new int[colorStr.length];
  for (int i=0; i<colorStr.length; i++) {
    colors[i] = unhex(colorStr[i]);
    println(colorStr[i]);
    println(colors[i]);
  }
  
  String[] ops = split(image, ';');
  int x = 0;
  int y = 0;
  for (int i=1; i<ops.length; i++) {
    int colorSelected = parseInt(ops[i]);
    fill(colors[colorSelected]);
    rect(x,y,imgGridSizeScale,imgGridSizeScale);
    println(x,y);
    println(colorSelected);
    x += imgGridSizeScale;
    if (x>=imgGridSizeScale*imgGridX) {
      x = 0;
      y += imgGridSizeScale;
    }
  }
}

void draw() {

}

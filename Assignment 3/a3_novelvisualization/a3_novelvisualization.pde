
//global variables
//PFont roboto;
float space;
float word_width;
float xpos, ypos;

color[] colors = {
  color(124, 0, 0), // blood red  0
  color(186, 0, 0), // rose red   1
  color(248, 0, 0)  // bright red 2
};

void setup() {
  background(255);
  size(700, 600);
  PFont font = createFont("Helvetica", 32);
  textFont(font);
  String[] words = loadStrings("uniquewords.txt");
  
  space = textWidth(" ");
  xpos = 5;
  ypos = 30;
  
  // work in progress - need to figure out better way to wrap text 
  for (int i=0; i<words.length; i++) {
    if (xpos > 700) { 
      ypos+=35;
      xpos = 5;
    } else if (ypos > 600) {
      break;
    }
    int color_index = int(random(colors.length));
    fill(colors[color_index]);
    int index = int(random(words.length));
    text(words[index], xpos, ypos);
    xpos += textWidth(words[index]) + space;
    }
}

void draw() {
  
}

// transfer functionality from for loop 
void displayText(String[] words) {
  
}

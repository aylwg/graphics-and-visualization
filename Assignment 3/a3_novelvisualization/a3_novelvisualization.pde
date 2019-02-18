
//global variables
float space;
float xpos, ypos;

color[] colors = {
  color(0),         // black      0
  color(62, 0, 0),  // burgundy   1
  color(124, 0, 0), // blood red  2
  color(186, 0, 0), // rose red   3
  color(248, 0, 0)  // bright red 4
};

void setup() {
  // set the canvas color and size
  background(255);
  size(700, 600);
  
  // change default font to Helvetica
  PFont font = createFont("Helvetica", 32);
  textFont(font);
  
  // load in the unique words generated from extract_words.py
  String[] words = loadStrings("uniquewords.txt");
  
  // set the standard position for first word
  space = textWidth(" ");
  xpos = 5;
  ypos = 30;
  
  // iterates as many times as necessary to fill the canvas with randomly picked 
  // and filled words from uniquewords.txt 
  for (int i=0; i<words.length; i++) {
    int color_index = int(random(colors.length));
    int word_index = int(random(words.length));
    fill(colors[color_index]);
    // change line if the next word puts the xposition out of bounds
    if (xpos+textWidth(words[word_index]) > 700) {
      ypos += 35;
      xpos = 5;
    // end for loop if next word goes out of bounds
    } else if (ypos > 600) {
      break;
    }
    // display text to screen at appropriate x and y position
    text(words[word_index], xpos, ypos);
    // increment the word width plus space width
    xpos += textWidth(words[word_index]) + space;
    }
}

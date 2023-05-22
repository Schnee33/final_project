PFont font;  // Font for the text
int fontSize = 32;  // Font size
float textX, textY;  // Position of the text

Button easyButton;
Button mediumButton;
Button hardButton;

void setup() {
  size(540, 720);
  font = createFont("Monaco", fontSize);
  textFont(font);
  
  easyButton = new Button(width/4, height/2, "Easy");
  mediumButton = new Button(width/2, height/2, "Medium");
  hardButton = new Button(3*width/4, height/2, "Hard");
  
  // Set initial position of the text
  textY = height/6;
  textX = width/2;
}

void draw() {
  background(0);  // Black background
  
  // Display animated colorful text
  fill(random(255), random(255), random(255));
  textSize(fontSize);
  textAlign(CENTER, CENTER);
  text("I Love Hue 2.0", textX, textY);
  
  // Display the buttons
  easyButton.display();
  mediumButton.display();
  hardButton.display();
}

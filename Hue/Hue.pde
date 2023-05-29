PFont font;  // Font for the text
int fontSize = 32;  // Font size
float textX, textY;  // Position of the text

Button easyButton;
Button mediumButton;
Button hardButton;

Level easy = new Level();

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
  
  easy.easy();
}

void mouseClicked() {
  // Check if a button is clicked
  if (easyButton.isClicked()) {
    easy.easy();
    // Handle easy button action
  } else if (mediumButton.isClicked()) {
    println("Medium button clicked!");
    // Handle medium button action
  } else if (hardButton.isClicked()) {
    println("Hard button clicked!");
    // Handle hard button action
  }
}

class Button {
  float x, y;  // Position of the button
  float w = 100, h = 50;  // Width and height of the button
  String label;  // Text label for the button
  
  Button(float x, float y, String label) {
    this.x = x;
    this.y = y;
    this.label = label;
  }
  
  void display() {
    // Draw the button
    fill(255);
    rectMode(CENTER);
    rect(x, y, w, h);
    
    // Display the label
    fill(0);
    textSize(18);
    textAlign(CENTER, CENTER);
    text(label, x, y);
  }
  
  boolean isClicked() {
    // Check if the button is clicked
    return mouseX >= x - w/2 && mouseX <= x + w/2 &&
           mouseY >= y - h/2 && mouseY <= y + h/2;
  }
}

//hello

import controlP5.*; 

private Menu m; 
private PImage bg;
String text; 
ControlP5 cp5; 


void setup() {
  size(1920, 1080);
  bg = loadImage("bg.jpg");
  m = new Menu(); 

  cp5 = new ControlP5(this);
  cp5.addTextfield("Username").setPosition(width/2-350, height/2-50).setSize(700, 100).setAutoClear(false);
  cp5.addBang("Login").setPosition((width/2+350), ( height/2-50)).setSize(100, 100);
}

void draw() {
  image (bg, 0, 0, width, height);
}

public void Login() {
  print("this is the text you typed: "); 
  text = cp5.get(Textfield.class, "Username").getText(); 
  println(text);
  m.login(text);
}

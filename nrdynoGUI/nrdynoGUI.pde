// Need G4P library
import g4p_controls.*;
import processing.serial.*;
int a=0;
float b=5.098;
public void setup(){
  size(900, 300, JAVA2D);
   
  createGUI();
  customGUI();
  
  // Place your setup code here
  
}

public void draw(){
  background(230);
 println(a++);
 label22.setTextBold();
 label22.setText("Recording");
 textfield3.setText(String.valueOf(b));
 }


public void customGUI()
{

}
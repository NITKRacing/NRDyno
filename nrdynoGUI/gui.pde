/* =========================================================
 * ====                   WARNING                        ===
 * =========================================================
 * The code in this tab has been generated from the GUI form
 * designer and care should be taken when editing this file.
 * Only add/edit code inside the event handlers i.e. only
 * use lines between the matching comment tags. e.g.

 void myBtnEvents(GButton button) { //_CODE_:button1:12356:
     // It is safe to enter your event code here  
 } //_CODE_:button1:12356:
 
 * Do not rename this tab!
 * =========================================================
 */

public void filenamefield_change1(GTextField source, GEvent event) { //_CODE_:filenamefield:467528:
  println("textfield1 - GTextField >> GEvent." + event + " @ " + millis());
} //_CODE_:filenamefield:467528:

public void stoprec_click1(GButton source, GEvent event) { //_CODE_:stoprec:905114:
  println("button2 - GButton >> GEvent." + event + " @ " + millis());
} //_CODE_:stoprec:905114:

public void startrpmfield_change1(GTextField source, GEvent event) { //_CODE_:startrpmfield:563292:
  println("textfield2 - GTextField >> GEvent." + event + " @ " + millis());
} //_CODE_:startrpmfield:563292:

public void stoprpmfield_change1(GTextField source, GEvent event) { //_CODE_:stoprpmfield:629288:
  println("textfield3 - GTextField >> GEvent." + event + " @ " + millis());
} //_CODE_:stoprpmfield:629288:

public void settings_click1(GButton source, GEvent event) { //_CODE_:settings:642696:
  println("button3 - GButton >> GEvent." + event + " @ " + millis());
    window1 = GWindow.getWindow(this, "Settings - NRDyno", 0, 0, 600, 400, JAVA2D);
  window1.noLoop();
  window1.addDrawHandler(this, "win_draw2");
  label6 = new GLabel(window1, 30, 70, 80, 20);
  label6.setText("Unit");
  label6.setTextBold();
  label6.setOpaque(false);
  label7 = new GLabel(window1, 30, 20, 100, 30);
  label7.setText("Settings");
  label7.setTextBold();
  label7.setLocalColorScheme(GCScheme.RED_SCHEME);
  label7.setOpaque(true);
  imgButton3 = new GImageButton(window1, 410, 320, 180, 70, new String[] { "Picture1.png", "Picture1.png", "Picture1.png" } );
  imgButton3.addEventHandler(this, "imgButton3_click1");
  unitlist = new GDropList(window1, 140, 70, 90, 60, 2);
  unitlist.setItems(loadStrings("list_832670"), 0);
  unitlist.setLocalColorScheme(GCScheme.RED_SCHEME);
  unitlist.addEventHandler(this, "unitlist_click1");
  panel2 = new GPanel(window1, 30, 110, 200, 90, "Default Values");
  panel2.setText("Default Values");
  panel2.setTextBold();
  panel2.setLocalColorScheme(GCScheme.RED_SCHEME);
  panel2.setOpaque(true);
  panel2.addEventHandler(this, "panel2_Click1");
  label8 = new GLabel(window1, -10, 30, 80, 20);
  label8.setText("Start RPM");
  label8.setTextBold();
  label8.setOpaque(false);
  label9 = new GLabel(window1, -10, 60, 80, 20);
  label9.setText("Stop RPM");
  label9.setTextBold();
  label9.setOpaque(false);
  textfield1 = new GTextField(window1, 80, 30, 110, 20, G4P.SCROLLBARS_NONE);
  textfield1.setOpaque(true);
  textfield1.addEventHandler(this, "textfield1_change1");
  textfield2 = new GTextField(window1, 80, 60, 110, 20, G4P.SCROLLBARS_NONE);
  textfield2.setOpaque(true);
  textfield2.addEventHandler(this, "textfield2_change1");
  panel2.addControl(label8);
  panel2.addControl(label9);
  panel2.addControl(textfield1);
  panel2.addControl(textfield2);
  panel3 = new GPanel(window1, 30, 210, 250, 150, "Reductions");
  panel3.setText("Reductions");
  panel3.setTextBold();
  panel3.setLocalColorScheme(GCScheme.RED_SCHEME);
  panel3.setOpaque(true);
  panel3.addEventHandler(this, "panel3_Click1");
  label11 = new GLabel(window1, 10, 30, 110, 20);
  label11.setText("Prim. Reduction");
  label11.setTextBold();
  label11.setOpaque(false);
  label12 = new GLabel(window1, 10, 60, 110, 20);
  label12.setText("Trans. Reduction");
  label12.setTextBold();
  label12.setOpaque(false);
  label13 = new GLabel(window1, 10, 90, 110, 20);
  label13.setText("Final Reduction");
  label13.setTextBold();
  label13.setOpaque(false);
  textfield3 = new GTextField(window1, 140, 30, 30, 20, G4P.SCROLLBARS_NONE);
  textfield3.setOpaque(true);
  textfield3.addEventHandler(this, "textfield3_change1");
  textfield4 = new GTextField(window1, 140, 60, 30, 20, G4P.SCROLLBARS_NONE);
  textfield4.setOpaque(true);
  textfield4.addEventHandler(this, "textfield4_change1");
  textfield5 = new GTextField(window1, 140, 90, 30, 20, G4P.SCROLLBARS_NONE);
  textfield5.setOpaque(true);
  textfield5.addEventHandler(this, "textfield5_change1");
  textfield6 = new GTextField(window1, 210, 30, 30, 20, G4P.SCROLLBARS_NONE);
  textfield6.setOpaque(true);
  textfield6.addEventHandler(this, "textfield6_change1");
  textfield7 = new GTextField(window1, 210, 60, 30, 20, G4P.SCROLLBARS_NONE);
  textfield7.setOpaque(true);
  textfield7.addEventHandler(this, "textfield7_change1");
  textfield8 = new GTextField(window1, 210, 90, 30, 20, G4P.SCROLLBARS_NONE);
  textfield8.setOpaque(true);
  textfield8.addEventHandler(this, "textfield8_change1");
  label14 = new GLabel(window1, 180, 30, 20, 20);
  label14.setText(":");
  label14.setTextBold();
  label14.setOpaque(false);
  label15 = new GLabel(window1, 180, 60, 20, 20);
  label15.setText(":");
  label15.setTextBold();
  label15.setOpaque(false);
  label16 = new GLabel(window1, 180, 90, 20, 20);
  label16.setText(":");
  label16.setTextBold();
  label16.setOpaque(false);
  label17 = new GLabel(window1, 10, 120, 110, 20);
  label17.setText("Total Reduction");
  label17.setTextBold();
  label17.setOpaque(false);
  label18 = new GLabel(window1, 140, 120, 100, 20);
  label18.setOpaque(false);
  panel3.addControl(label11);
  panel3.addControl(label12);
  panel3.addControl(label13);
  panel3.addControl(textfield3);
  panel3.addControl(textfield4);
  panel3.addControl(textfield5);
  panel3.addControl(textfield6);
  panel3.addControl(textfield7);
  panel3.addControl(textfield8);
  panel3.addControl(label14);
  panel3.addControl(label15);
  panel3.addControl(label16);
  panel3.addControl(label17);
  panel3.addControl(label18);
  window1.loop();
} //_CODE_:settings:642696:

public void imgButton1_click1(GImageButton source, GEvent event) { //_CODE_:imgButton1:297195:
  println("imgButton1 - GImageButton >> GEvent." + event + " @ " + millis());
} //_CODE_:imgButton1:297195:

public void panel1_Click1(GPanel source, GEvent event) { //_CODE_:panel1:235688:
  println("panel1 - GPanel >> GEvent." + event + " @ " + millis());
} //_CODE_:panel1:235688:

public void startrec_click1(GButton source, GEvent event) { //_CODE_:startrec:372962:
  println("button1 - GButton >> GEvent." + event + " @ " + millis());
} //_CODE_:startrec:372962:

public void setbutton_click1(GButton source, GEvent event) { //_CODE_:setbutton:747857:
  println("setbutton - GButton >> GEvent." + event + " @ " + millis());
} //_CODE_:setbutton:747857:

synchronized public void win_draw2(PApplet appc, GWinData data) { //_CODE_:window1:301507:
  appc.background(230);
} //_CODE_:window1:301507:

public void imgButton3_click1(GImageButton source, GEvent event) { //_CODE_:imgButton3:703340:
  println("imgButton3 - GImageButton >> GEvent." + event + " @ " + millis());
} //_CODE_:imgButton3:703340:

public void unitlist_click1(GDropList source, GEvent event) { //_CODE_:unitlist:832670:
  println("unitlist - GDropList >> GEvent." + event + " @ " + millis());
} //_CODE_:unitlist:832670:

public void panel2_Click1(GPanel source, GEvent event) { //_CODE_:panel2:494021:
  println("panel2 - GPanel >> GEvent." + event + " @ " + millis());
} //_CODE_:panel2:494021:

public void textfield1_change1(GTextField source, GEvent event) { //_CODE_:textfield1:751277:
  println("textfield1 - GTextField >> GEvent." + event + " @ " + millis());
} //_CODE_:textfield1:751277:

public void textfield2_change1(GTextField source, GEvent event) { //_CODE_:textfield2:391116:
  println("textfield2 - GTextField >> GEvent." + event + " @ " + millis());
} //_CODE_:textfield2:391116:

public void panel3_Click1(GPanel source, GEvent event) { //_CODE_:panel3:580920:
  println("panel3 - GPanel >> GEvent." + event + " @ " + millis());
} //_CODE_:panel3:580920:

public void textfield3_change1(GTextField source, GEvent event) { //_CODE_:textfield3:441029:
  println("textfield3 - GTextField >> GEvent." + event + " @ " + millis());
} //_CODE_:textfield3:441029:

public void textfield4_change1(GTextField source, GEvent event) { //_CODE_:textfield4:329895:
  println("textfield4 - GTextField >> GEvent." + event + " @ " + millis());
} //_CODE_:textfield4:329895:

public void textfield5_change1(GTextField source, GEvent event) { //_CODE_:textfield5:817152:
  println("textfield5 - GTextField >> GEvent." + event + " @ " + millis());
} //_CODE_:textfield5:817152:

public void textfield6_change1(GTextField source, GEvent event) { //_CODE_:textfield6:261626:
  println("textfield6 - GTextField >> GEvent." + event + " @ " + millis());
} //_CODE_:textfield6:261626:

public void textfield7_change1(GTextField source, GEvent event) { //_CODE_:textfield7:826368:
  println("textfield7 - GTextField >> GEvent." + event + " @ " + millis());
} //_CODE_:textfield7:826368:

public void textfield8_change1(GTextField source, GEvent event) { //_CODE_:textfield8:266076:
  println("textfield8 - GTextField >> GEvent." + event + " @ " + millis());
} //_CODE_:textfield8:266076:

public void button1_click1(GButton source, GEvent event) { //_CODE_:button1:920222:
  println("button1 - GButton >> GEvent." + event + " @ " + millis());
} //_CODE_:button1:920222:



// Create all the GUI controls. 
// autogenerated do not edit
public void createGUI(){
  G4P.messagesEnabled(false);
  G4P.setGlobalColorScheme(GCScheme.BLUE_SCHEME);
  G4P.setCursor(ARROW);
  surface.setTitle("Mission Control - NRDyno");
  filenamefield = new GTextField(this, 180, 230, 380, 20, G4P.SCROLLBARS_NONE);
  filenamefield.setOpaque(true);
  filenamefield.addEventHandler(this, "filenamefield_change1");
  label1 = new GLabel(this, 20, 230, 140, 20);
  label1.setText("Desired Filename");
  label1.setTextBold();
  label1.setOpaque(false);
  stoprec = new GButton(this, 180, 30, 120, 30);
  stoprec.setText("Stop Recording");
  stoprec.setTextBold();
  stoprec.setLocalColorScheme(GCScheme.RED_SCHEME);
  stoprec.addEventHandler(this, "stoprec_click1");
  label2 = new GLabel(this, 20, 90, 110, 30);
  label2.setText("Start RPM");
  label2.setTextBold();
  label2.setOpaque(false);
  label3 = new GLabel(this, 20, 130, 110, 30);
  label3.setText("Stop RPM");
  label3.setTextBold();
  label3.setOpaque(false);
  startrpmfield = new GTextField(this, 160, 90, 160, 30, G4P.SCROLLBARS_NONE);
  startrpmfield.setOpaque(true);
  startrpmfield.addEventHandler(this, "startrpmfield_change1");
  stoprpmfield = new GTextField(this, 160, 130, 160, 30, G4P.SCROLLBARS_NONE);
  stoprpmfield.setOpaque(true);
  stoprpmfield.addEventHandler(this, "stoprpmfield_change1");
  settings = new GButton(this, 780, 30, 100, 30);
  settings.setText("Settings");
  settings.setTextBold();
  settings.addEventHandler(this, "settings_click1");
  imgButton1 = new GImageButton(this, 620, 200, 280, 90, new String[] { "Picture1.png", "Picture1.png", "Picture1.png" } );
  imgButton1.addEventHandler(this, "imgButton1_click1");
  panel1 = new GPanel(this, 390, 90, 330, 90, "   Parameters                      Current                    Previous");
  panel1.setCollapsible(false);
  panel1.setDraggable(false);
  panel1.setText("   Parameters                      Current                    Previous");
  panel1.setTextBold();
  panel1.setOpaque(true);
  panel1.addEventHandler(this, "panel1_Click1");
  label4 = new GLabel(this, 10, 30, 80, 20);
  label4.setText("Peak Torque");
  label4.setTextBold();
  label4.setLocalColorScheme(GCScheme.RED_SCHEME);
  label4.setOpaque(false);
  label5 = new GLabel(this, 10, 60, 80, 20);
  label5.setText("Peak Power");
  label5.setTextBold();
  label5.setLocalColorScheme(GCScheme.RED_SCHEME);
  label5.setOpaque(false);
  panel1.addControl(label4);
  panel1.addControl(label5);
  currptorque = new GLabel(this, 500, 120, 100, 20);
  currptorque.setOpaque(false);
  currppower = new GLabel(this, 500, 150, 100, 20);
  currppower.setOpaque(false);
  startrec = new GButton(this, 20, 30, 120, 30);
  startrec.setText("Start Recording");
  startrec.setTextBold();
  startrec.setLocalColorScheme(GCScheme.GREEN_SCHEME);
  startrec.addEventHandler(this, "startrec_click1");
  prevptorque = new GLabel(this, 610, 120, 100, 20);
  prevptorque.setOpaque(false);
  prevppower = new GLabel(this, 610, 150, 100, 20);
  prevppower.setOpaque(false);
  label10 = new GLabel(this, 20, 260, 140, 20);
  label10.setText("File Saved To");
  label10.setTextBold();
  label10.setOpaque(false);
  filesavedlabel = new GLabel(this, 180, 260, 380, 20);
  filesavedlabel.setOpaque(false);
  setbutton = new GButton(this, 110, 170, 80, 30);
  setbutton.setText("SET");
  setbutton.setTextBold();
  setbutton.setLocalColorScheme(GCScheme.PURPLE_SCHEME);
  setbutton.addEventHandler(this, "setbutton_click1");
  window1 = GWindow.getWindow(this, "Settings - NRDyno", 0, 0, 600, 400, JAVA2D);
  window1.noLoop();
  window1.addDrawHandler(this, "win_draw2");
  label6 = new GLabel(window1, 30, 70, 80, 20);
  label6.setText("Unit");
  label6.setTextBold();
  label6.setOpaque(false);
  label7 = new GLabel(window1, 30, 20, 100, 30);
  label7.setText("Settings");
  label7.setTextBold();
  label7.setLocalColorScheme(GCScheme.RED_SCHEME);
  label7.setOpaque(true);
  imgButton3 = new GImageButton(window1, 410, 320, 180, 70, new String[] { "Picture1.png", "Picture1.png", "Picture1.png" } );
  imgButton3.addEventHandler(this, "imgButton3_click1");
  unitlist = new GDropList(window1, 140, 70, 90, 60, 2);
  unitlist.setItems(loadStrings("list_832670"), 0);
  unitlist.setLocalColorScheme(GCScheme.RED_SCHEME);
  unitlist.addEventHandler(this, "unitlist_click1");
  panel2 = new GPanel(window1, 30, 110, 200, 90, "Default Values");
  panel2.setText("Default Values");
  panel2.setTextBold();
  panel2.setLocalColorScheme(GCScheme.RED_SCHEME);
  panel2.setOpaque(true);
  panel2.addEventHandler(this, "panel2_Click1");
  label8 = new GLabel(window1, -10, 30, 80, 20);
  label8.setText("Start RPM");
  label8.setTextBold();
  label8.setOpaque(false);
  label9 = new GLabel(window1, -10, 60, 80, 20);
  label9.setText("Stop RPM");
  label9.setTextBold();
  label9.setOpaque(false);
  textfield1 = new GTextField(window1, 80, 30, 110, 20, G4P.SCROLLBARS_NONE);
  textfield1.setOpaque(true);
  textfield1.addEventHandler(this, "textfield1_change1");
  textfield2 = new GTextField(window1, 80, 60, 110, 20, G4P.SCROLLBARS_NONE);
  textfield2.setOpaque(true);
  textfield2.addEventHandler(this, "textfield2_change1");
  panel2.addControl(label8);
  panel2.addControl(label9);
  panel2.addControl(textfield1);
  panel2.addControl(textfield2);
  panel3 = new GPanel(window1, 30, 210, 250, 150, "Reductions");
  panel3.setText("Reductions");
  panel3.setTextBold();
  panel3.setLocalColorScheme(GCScheme.RED_SCHEME);
  panel3.setOpaque(true);
  panel3.addEventHandler(this, "panel3_Click1");
  label11 = new GLabel(window1, 10, 30, 110, 20);
  label11.setText("Prim. Reduction");
  label11.setTextBold();
  label11.setOpaque(false);
  label12 = new GLabel(window1, 10, 60, 110, 20);
  label12.setText("Trans. Reduction");
  label12.setTextBold();
  label12.setOpaque(false);
  label13 = new GLabel(window1, 10, 90, 110, 20);
  label13.setText("Final Reduction");
  label13.setTextBold();
  label13.setOpaque(false);
  textfield3 = new GTextField(window1, 140, 30, 30, 20, G4P.SCROLLBARS_NONE);
  textfield3.setOpaque(true);
  textfield3.addEventHandler(this, "textfield3_change1");
  textfield4 = new GTextField(window1, 140, 60, 30, 20, G4P.SCROLLBARS_NONE);
  textfield4.setOpaque(true);
  textfield4.addEventHandler(this, "textfield4_change1");
  textfield5 = new GTextField(window1, 140, 90, 30, 20, G4P.SCROLLBARS_NONE);
  textfield5.setOpaque(true);
  textfield5.addEventHandler(this, "textfield5_change1");
  textfield6 = new GTextField(window1, 210, 30, 30, 20, G4P.SCROLLBARS_NONE);
  textfield6.setOpaque(true);
  textfield6.addEventHandler(this, "textfield6_change1");
  textfield7 = new GTextField(window1, 210, 60, 30, 20, G4P.SCROLLBARS_NONE);
  textfield7.setOpaque(true);
  textfield7.addEventHandler(this, "textfield7_change1");
  textfield8 = new GTextField(window1, 210, 90, 30, 20, G4P.SCROLLBARS_NONE);
  textfield8.setOpaque(true);
  textfield8.addEventHandler(this, "textfield8_change1");
  label14 = new GLabel(window1, 180, 30, 20, 20);
  label14.setText(":");
  label14.setTextBold();
  label14.setOpaque(false);
  label15 = new GLabel(window1, 180, 60, 20, 20);
  label15.setText(":");
  label15.setTextBold();
  label15.setOpaque(false);
  label16 = new GLabel(window1, 180, 90, 20, 20);
  label16.setText(":");
  label16.setTextBold();
  label16.setOpaque(false);
  label17 = new GLabel(window1, 10, 120, 110, 20);
  label17.setText("Total Reduction");
  label17.setTextBold();
  label17.setOpaque(false);
  label18 = new GLabel(window1, 140, 120, 100, 20);
  label18.setOpaque(false);
  panel3.addControl(label11);
  panel3.addControl(label12);
  panel3.addControl(label13);
  panel3.addControl(textfield3);
  panel3.addControl(textfield4);
  panel3.addControl(textfield5);
  panel3.addControl(textfield6);
  panel3.addControl(textfield7);
  panel3.addControl(textfield8);
  panel3.addControl(label14);
  panel3.addControl(label15);
  panel3.addControl(label16);
  panel3.addControl(label17);
  panel3.addControl(label18);
  button1 = new GButton(window1, 500, 20, 80, 30);
  button1.setText("SET");
  button1.setTextBold();
  button1.setLocalColorScheme(GCScheme.RED_SCHEME);
  button1.addEventHandler(this, "button1_click1");
  window1.loop();
}

// Variable declarations 
// autogenerated do not edit
GTextField filenamefield; 
GLabel label1; 
GButton stoprec; 
GLabel label2; 
GLabel label3; 
GTextField startrpmfield; 
GTextField stoprpmfield; 
GButton settings; 
GImageButton imgButton1; 
GPanel panel1; 
GLabel label4; 
GLabel label5; 
GLabel currptorque; 
GLabel currppower; 
GButton startrec; 
GLabel prevptorque; 
GLabel prevppower; 
GLabel label10; 
GLabel filesavedlabel; 
GButton setbutton; 
GWindow window1;
GLabel label6; 
GLabel label7; 
GImageButton imgButton3; 
GDropList unitlist; 
GPanel panel2; 
GLabel label8; 
GLabel label9; 
GTextField textfield1; 
GTextField textfield2; 
GPanel panel3; 
GLabel label11; 
GLabel label12; 
GLabel label13; 
GTextField textfield3; 
GTextField textfield4; 
GTextField textfield5; 
GTextField textfield6; 
GTextField textfield7; 
GTextField textfield8; 
GLabel label14; 
GLabel label15; 
GLabel label16; 
GLabel label17; 
GLabel label18; 
GButton button1; 
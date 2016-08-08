import grafica.*;
PImage logo;
Table table;
 GPointsArray points = new GPointsArray();
  GPointsArray points2 = new GPointsArray();
void setup() {
  size(100, 100);
 
  String[] args = {"YourSketchNameHere"};
  SecondApplet sa = new SecondApplet();
  PApplet.runSketch(args, sa);
}
 
void draw() {
  background(0);
  ellipse(50, 50, 10, 10);
}     
 
public class SecondApplet extends PApplet {
 
  public void settings() {
    size(1000,750);
    table=loadTable("datafinal.csv","header");
 
  for (int i = 0; i < table.getRowCount(); i++) {
    int rpm=table.getInt(i,"rpm");
    int torque=table.getInt(i,"torque");
    int power=table.getInt(i,"power");
    points.add(rpm,torque);
    points2.add(rpm,power);
  }
  
   GPlot plot = new GPlot(this);
  plot.setPos(0, 50); // Change position of plot in window here
  plot.setDim(900,600); // Change size of plot here

  // Set the plot title and the axis labels
 // plot.setTitleText("DynoRun");
  plot.getXAxis().setAxisLabelText("RPM");
  plot.getYAxis().setAxisLabelText("Power/Torque");

  // Add the points
  
plot.addLayer("Power",points2);
plot.getLayer("Power").setLineColor(color(200,0,0,300));
plot.getLayer("Power").setLineWidth(5.0);
plot.addLayer("Torque",points);
plot.getLayer("Torque").setLineColor(color(90,90,90,300));
plot.getLayer("Torque").setLineWidth(5.0);
  // Draw it!


  plot.beginDraw();
  plot.drawBox();
  plot.drawXAxis();
  plot.drawYAxis();
  plot.drawTitle();
  plot.drawGridLines(GPlot.VERTICAL);
  plot.drawGridLines(GPlot.HORIZONTAL);
    plot.setLineWidth(8.0);
  //plot.addPoints(points);
  plot.drawLines();
  plot.drawLegend(new String[] {"Power(HP)", "Torque(N-m)"}, new float[] {0.07, 0.22}, 
                  new float[] {0.92, 0.92});
  plot.endDraw();
  
  
logo = loadImage("logo.png");
logo.resize(200,80);
image(logo,100,10);
saveFrame("1.jpg");

  }
  public void draw() {
   background(255);
  // Prepare the points for the plot

  // Create a new plot and set its position on the screen
 
noLoop();
  }
}
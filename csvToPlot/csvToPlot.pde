import grafica.*;

void setup() {
  size(800, 350); //Change size of window here
  background(150);

  // Prepare the points for the plot
  Table table=loadTable("data.csv","header");
  GPointsArray points = new GPointsArray();
  GPointsArray points2 = new GPointsArray();

  for (int i = 0; i < table.getRowCount(); i++) {
    int rpm=table.getInt(i,"rpm");
    int torque=table.getInt(i,"torque");
    int power=table.getInt(i,"power");
    points.add(rpm,torque);
    points2.add(rpm,power);
  }

  // Create a new plot and set its position on the screen
  GPlot plot = new GPlot(this);
  plot.setPos(80, 5); // Change position of plot in window here
  // or all in one go
  // GPlot plot = new GPlot(this, 25, 25);
plot.setDim(600,250); // Change size of plot here

  // Set the plot title and the axis labels
  plot.setTitleText("Timestamp");
  plot.getXAxis().setAxisLabelText("RPM");
  plot.getYAxis().setAxisLabelText("Power/Torque");

  // Add the points
//  plot.setPoints(points);
plot.addLayer("Power",points2);
plot.getLayer("Power").setLineColor(color(255,100,255,300));
plot.getLayer("Power").setLineWidth(5.0);
plot.addLayer("Torque",points);
plot.getLayer("Torque").setLineColor(color(100,100,255,300));
plot.getLayer("Torque").setLineWidth(5.0);
  // Draw it!

 plot.drawGridLines(GPlot.BOTH);
  plot.drawGridLines(GPlot.HORIZONTAL);
plot.beginDraw();
  plot.drawBox();
  plot.drawXAxis();
  plot.drawYAxis();
  plot.drawTitle();
  plot.drawGridLines(GPlot.VERTICAL);
  plot.drawGridLines(GPlot.HORIZONTAL);
    plot.setLineWidth(10.0);
  //plot.addPoints(points);
  plot.drawLines();

 // plot.drawFilledContours(GPlot.HORIZONTAL, 0);
   plot.setPoints(points);
plot.addLayer("Torque",points2);

plot.endDraw();
}
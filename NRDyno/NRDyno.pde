// Need G4P library
import g4p_controls.*;
import processing.serial.*;
import grafica.*;
PImage logo,logo2;

Serial mySerial;
PrintWriter output;
float inertia;
Table def,table;
String filename,csvfile,jpgfile,paramfile;
public void setup(){
  size(900, 300, JAVA2D);
   
  createGUI();
  customGUI();
  getDefault();
 getFilename();
 mySerial = new Serial( this, Serial.list()[0],115200 );
   output = createWriter(filename);
  // Place your setup code here
  
}

public void draw(){
  background(230);
 label22.setTextBold();
 label22.setText("Recording");
  if (mySerial.available() > 0 ) {
         String value = mySerial.readString();
        if ( value!=null) {
              output.println( value );
         }
    }
 
 }


public void customGUI()
{

}

void getDefault()
{  
  def = loadTable("/data/default.csv","header");
  textfield1.setText(String.valueOf(def.getInt(0,"startr")));
  textfield2.setText(String.valueOf(def.getInt(0,"stopr")));
  textfield9.setText(String.valueOf(def.getFloat(0,"radius")));
  textfield10.setText(String.valueOf(def.getFloat(0,"length")));
  textfield11.setText(String.valueOf(def.getFloat(0,"mass")));
  textfield3.setText(String.valueOf(def.getFloat(0,"prim1")));
  textfield6.setText(String.valueOf(def.getFloat(0,"prim2")));
  textfield4.setText(String.valueOf(def.getFloat(0,"trans1")));
  textfield7.setText(String.valueOf(def.getFloat(0,"trans2")));
  textfield5.setText(String.valueOf(def.getFloat(0,"final1")));
  textfield8.setText(String.valueOf(def.getFloat(0,"final2")));  
  //Equation to find inertia
  inertia=1;
}

void setDefault()
{
  def=loadTable("/data/default.csv","header");
  def.setInt(0,"startr",Integer.valueOf(textfield1.getText()));
  def.setInt(0,"stopr",Integer.valueOf(textfield2.getText()));
  def.setFloat(0,"radius",Float.valueOf(textfield9.getText()));
  def.setFloat(0,"length",Float.valueOf(textfield10.getText()));
  def.setFloat(0,"mass",Float.valueOf(textfield11.getText()));
  def.setFloat(0,"prim1",Float.valueOf(textfield3.getText()));
  def.setFloat(0,"prim2",Float.valueOf(textfield6.getText()));
  def.setFloat(0,"trans1",Float.valueOf(textfield4.getText()));
  def.setFloat(0,"trans2",Float.valueOf(textfield7.getText()));
  def.setFloat(0,"final1",Float.valueOf(textfield5.getText()));
  def.setFloat(0,"final2",Float.valueOf(textfield8.getText()));
  saveTable(def,"/data/default.csv");
  
}




void getFilename(){
  int[] date = new int[3];
int[] time = new int[2];
date[0]=day();
    date[1]=month();
   date[2]=year();
   time[0]=hour();
   time[1]=minute();
   filename = "/log/"+join(nf(date,0),"-")+"_"+join(nf(time,0),"-")+".txt";
   csvfile = "/log/"+join(nf(date,0),"-")+"_"+join(nf(time,0),"-")+".csv";
 jpgfile = "/log/"+join(nf(date,0),"-")+"_"+join(nf(time,0),"-")+".jpg";
 paramfile = "/log/"+join(nf(date,0),"-")+"_"+join(nf(time,0),"-")+"-param.csv";
}

void toCsv()
{
  String lines[] = loadStrings(filename);
table=new Table();
table.addColumn("timestamp",Table.INT);

for (int i = 0 ; i < lines.length; i++) {  
  int a = int(lines[i]);
  table.setInt(i,"timestamp",a);   
}
saveTable(table,csvfile);
}


void param()
{
table=loadTable(csvfile,"header");
  Table param;
  int num = table.getRowCount();
  param=new Table();
  param.addColumn("rpm");
  param.addColumn("power");
  param.addColumn("torque");
  float[] time=new float [num];
  float[] rpm=new float [num];
  float[] power=new float [num];
  float[] omega2=new float [num];
  float[] torque=new float [num];
  time[0]=table.getInt(0,"timestamp")/1000000;
  rpm[0]=0;
  power[0]=0;
  omega2[0]=0;
  torque[0]=0;
  for(int i=1;i<num-1;i++)
  {
    time[i]=table.getInt(i,"timestamp");
    rpm[i]=30000000/((time[i]-time[i-1]));
    omega2[i]=sq(PI*1000000/(time[i]-time[i-1]));
    power[i]=0.0006705*1000000*inertia*(omega2[i]-omega2[i-1])/(time[i]-time[i-1]); //Multiply inertia value here
    torque[i]=power[i]*7121.0328/rpm[i];  
    if(!(torque[i]<0 || power[i]<0)){
    TableRow nrow=param.addRow();
    nrow.setFloat("rpm",rpm[i]);
    nrow.setFloat("power",power[i]);
    nrow.setFloat("torque",torque[i]);}
    
    
  }
  saveTable(param,paramfile);
    
}
 
 
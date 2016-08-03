import processing.serial.*;
Serial mySerial;
PrintWriter output;

String filename,csvfile;
Table table;
void setup() {
   mySerial = new Serial( this, Serial.list()[0],115200 );
   output = createWriter(filename);
}

void draw() {
    if (mySerial.available() > 0 ) {
         String value = mySerial.readString();
        if ( value!=null) {
          
              output.println( value );
         }
    }
}

void keyPressed() {
  
    output.flush();  // Writes the remaining data to the file
    output.close();  // Finishes the file
      
String lines[] = loadStrings(filename);
table=new Table();
table.addColumn("timestamp",Table.INT);

for (int i = 0 ; i < lines.length; i++) {
  table.addRow();
  int a = int(lines[i]);
  table.setInt(i,"timestamp",a); 
  println(a);
  
}
saveTable(table,csvfile);
println("there are " + lines.length + " lines");
    exit();  // Stops the program
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
   csvfile = "/log/"+join(nf(date,0),"-")+"_"+join(nf(time,0),"-")+".csv";}
   
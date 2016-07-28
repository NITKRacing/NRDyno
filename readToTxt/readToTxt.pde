import processing.serial.*;
Serial mySerial;
PrintWriter output;
int[] date = new int[3];
int[] time = new int[2];
String filename;
void setup() {
   mySerial = new Serial( this, Serial.list()[0], 115200 );
   date[0]=day();
    date[1]=month();
   date[2]=year();
   time[0]=hour();
   time[1]=minute();
   filename = join(nf(date,0),"-")+"_"+join(nf(time,0),"-")+".txt";
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
println("there are " + lines.length + " lines");
for (int i = 0 ; i < lines.length; i++) {
  int a = int(lines[i]);
  if(a>300 && a<700)
  println(a);
  
}
println("there are " + lines.length + " lines");
    exit();  // Stops the program
}
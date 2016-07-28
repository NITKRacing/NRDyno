import processing.serial.*;
Serial mySerial;
PrintWriter output;
int[] date = new int[3];
int[] time = new int[2];
void setup() {
   mySerial = new Serial( this, Serial.list()[0], 115200 );
   date[0]=day();
    date[1]=month();
   date[2]=year();
   time[0]=hour();
   time[1]=minute();
   String d=join(nf(date,0),"-");
   String t=join(nf(time,0),":");
   String filename=d+"_"+t".txt";
   
   output = createWriter( filename);
}
void draw() {
    if (mySerial.available() > 0 ) {
         String value = mySerial.readString();
         if ( value != null ) {
              output.println( value );
         }
    }
}

void keyPressed() {
    output.flush();  // Writes the remaining data to the file
    output.close();  // Finishes the file
    exit();  // Stops the program
}
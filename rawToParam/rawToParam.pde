
void setup()
{
  Table table=loadTable("data.csv","header");
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
  float inertia = 1;
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
  saveTable(param,"datafinal.csv");
  



}
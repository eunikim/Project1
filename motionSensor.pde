import tramontana.library.*;
import websockets.*;

Tramontana t;
float roll;
float pitch;
float yaw;

void setup(){
  //draws sketch on computer
 size(480,240,P3D);
 //creates variable for phone & establishes connection
 t = new Tramontana(this,"192.168.0.238");
}

void draw(){
  background(255);
  fill(128);
  pushMatrix();
  translate(width/2,height/2);
  //roll=rotation around front to back axis
  rotateX(roll);
  //pitch=rot around side to side axis
  rotateY(pitch);
  //rot around vertical axis
  rotateZ(yaw);
  //draws shape on computer screen- cube in this instance
  box(100);
  popMatrix();
}
void mousePressed(){
  t.subscribeAttitude(5);
}

void onAttitudeEvent(String ipAddress, float newRoll, float newPitch, float newYaw)
{
  roll  =  newRoll;
  pitch =  newPitch;
  yaw   =  newYaw;
}

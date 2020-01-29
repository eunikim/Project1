import tramontana.library.*;
import websockets.*;

Tramontana t;

void setup(){
 //sets size of window on computer
 size(480,240);
 //makes variable for phone and establishes connection through IP address
 t = new Tramontana(this,"192.168.0.238");
}
void draw(){
  //draws sketch on computer
  background(255);
  fill(128);
}

//makes phone vibrate when sketch on computer is clicked with mouse
void mousePressed(){
  t.makeVibrate();
}

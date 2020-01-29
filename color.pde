import tramontana.library.*;
import websockets.*;

Tramontana t;

void setup(){
 size(480,240);
 t = new Tramontana(this,"192.168.0.238");
}
void draw(){
  background(255);
  fill(128);
}

//do action when a key is pressed instead of when a mouse clicks
//can set to any key or specific ones
void keyPressed(){
  
 //if "a" is pressed on the computer keyboard, the phone screen will be red
 if(key == 'a')
  {
  t.setColor(255,0,0,100);
  }
  
  //if "s" is pressed on the computer keyboard, the phone screen will be green
  else if(key == 's')
  {
    t.setColor(0,255,0,100);
    //can also do two or more functions at once like vibrate & display color
    t.makeVibrate();
  }
  
   //if "d" is pressed on the computer keyboard, the phone screen will be blue
    else if(key == 'd')
  {
    t.setColor(0,0,255,100);
  }
  
}

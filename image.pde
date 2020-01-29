//example code by Pierluigi Dalla Rosa
import tramontana.library.*;
import websockets.*;

Tramontana t;

void setup(){
 size(480,240);
 t = new Tramontana(this,"10.16.58.152");
}
void draw(){
}

void keyPressed(){
  
 if(key == 'a')
  {
    //if "a" is pressed on computer keyboard, the first image will be downloaded from URL
  t.showImage("https://i.imgur.com/A72kwLw.jpg");
  }
  
    else if(key == 's')
  {
   //can do two functions at once during one command like vibrate & show image
   t.showImage("https://i.imgur.com/r2I46tl.jpg");
   t.makeVibrate();
  }
  
    else if(key == 'd')
  {
    //images will download the first time then be stored in local files until sketch/app is closed
   t.showImage("https://i.imgur.com/WGKNlx3.jpg");
  }
 
}

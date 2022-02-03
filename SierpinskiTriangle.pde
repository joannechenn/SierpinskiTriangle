int len = 0;
int newColor1 = color((int)(Math.random() * 256), (int)(Math.random() * 256), (int)(Math.random() * 256));
int newColor2 = color((int)(Math.random() * 256), (int)(Math.random() * 256), (int)(Math.random() * 256));


public void setup(){
  size(650, 650);  
}


public void draw(){
  background(0);
  mouseDragged();
  
  stroke(255, 255, 255);
  //fill((int)(Math.random() * 256) + 65, (int)(Math.random() * 256) + 65, (int)(Math.random() * 256) + 65, 120);
  fill(255, 255, 255, 100);
  sierpinski((int)(19.84375), (int)(620.3125), len);
  //(int)(611.15625)
  
  stroke(newColor1);
  fill(newColor1, 90);
  sierpinski((int)(19.6875 + 10), 640, len);
  //(int)(611.3125)
 
  stroke(newColor2);
  fill(newColor2, 90);
  sierpinski(10, 640, len);
  //(int)(610.3125)
}


public void mouseDragged(){
  len = mouseX;
  
  if(len <= 10){
    len = 10;
  }
  
  else if(len >= 611.3125){
    len = (int)(611.3125);
  }
}


public void sierpinski(int x, int y, int len){
  if(len <= 20){
    //stroke((int)(Math.random() * 256), (int)(Math.random() * 256), (int)(Math.random() * 256));
    triangle(x, y, x + len, y,  x + (len/2), y - len);
  }
  
  else{
    //stroke((int)(Math.random() * 256), (int)(Math.random() * 256), (int)(Math.random() * 256));
    sierpinski(x, y, len/2);
    sierpinski(x + (len/2), y, len/2);
    sierpinski(x + (len/4), y - (len/2), len/2);
  }
}

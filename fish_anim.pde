void setup() {
  size(400, 400);
  background(255);
 // noLoop();
}
float xMov;
float yMov;
void draw() {
  background(255);  
  xMov+=2;
  yMov = sin(xMov/40) * 10;

  fill(255, 100, 100);
  stroke(0);
  ellipse(200 + xMov, 200+ yMov , 200, 95);

  fill(255,255,255);
  stroke(0);
  ellipse(260+ xMov,190 + yMov,15,15);
  
    fill(0);
  stroke(0);
  ellipse(260+ xMov,190+ yMov,3,3);
  
  
  noFill();
  stroke(0, 0, 0);
  line(240+xMov,210+ yMov, 280+xMov, 220+ yMov);
  
  pushMatrix();        
  translate(width/2, height/2);
  rotate(HALF_PI * -1);

  fill(100, 150, 255);
  stroke(0);
  
  int xConst = 150;
  triangle(-50+ -yMov, -15 - xConst + xMov, 50+ -yMov, -15 - xConst + xMov, 0+ -yMov, 50-xConst+ xMov);
  popMatrix(); 
  
  if(xMov > 400) xMov = -400;
}

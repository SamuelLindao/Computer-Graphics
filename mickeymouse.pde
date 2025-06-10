void setup() {
  size(400, 400, P3D);  
  noStroke();           
}
int a = 150;
int b = 250;
int t = 0;
void draw() {
  background(255);
  lights();
  noStroke();

  newSphere(38, new PVector(78 + a, -50 + b, 46), color(255, 0, 0));
  newSphere(23, new PVector(42 + a, -95 + b, 46), color(0, 255, 0));
  newSphere(23, new PVector(115 + a, -95 + b, 46), color(0, 0, 255));
  ellipsoid(18, 25, 16, new PVector(78 + a, -23 + b, 79), color(255, 255, 0));
  ellipsoid(10, 12, 9, new PVector(78 + a, -26 + b, 108), color(0, 255, 255));
  newSphere(7, new PVector(63 + a, -48 + b, 77), color(255, 0, 0));
  newSphere(3, new PVector(63 + a, -45 + b, 77), color(255));
  newSphere(7, new PVector(93 + a, -48 + b, 77), color(255, 0, 0));
  newSphere(3, new PVector(93 + a, -45 + b, 77), color(255));
  newSphere(3, new PVector(63 + a, -45 + b, 77), color(0));
  newSphere(3, new PVector(93 + a, -45 + b, 77), color(0));
  if(a > 350) a = -140;
  a++;
}


void ellipsoid(float rx, float ry, float rz, PVector pos, color c) {
  pushMatrix();
  translate(pos.x, pos.y, pos.z);
  fill(c);
  noStroke();
  scale(rx / 50.0, ry / 50.0, rz / 50.0);
  sphere(50);
  popMatrix();
}

void newSphere(int size, PVector pos, color c)
{
      fill(c);
      translate(pos.x, pos.y, pos.z);
      sphere(size);
      translate(-pos.x, -pos.y, -pos.z);
      
      
}

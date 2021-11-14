int xStart;
int yStart;
int xEnd;
int yEnd;
int xChange;
int yChange;
int yRange;
int xMax;
int xMin;
float strokeW;
double run;
int cloud;
int cloud2;

void setup() {
  size(400,600);
  background(140, 160, 195);
  xStart = 200;
  yStart = 0;
  strokeW = 10.0;
  xMax = 400;
  xMin = 0;
  cloud = -50;
  cloud2 = 450;
  frameRate(10);
}

void draw() {
  fill(140, 160, 195, 100);
  rect(0,0,width,height);
  
  stroke(140,140,140);
  fill(140,140,140);
  ellipse(350,80,180,120);
  ellipse(270,90,200,100);
  ellipse(185,80,180,120);
  ellipse(50,95,230,90);

  
  cloud2 += 1;
  if (cloud2 > 450) {
    cloud2 = -50;
  }
  
  backCloud();
  
  run = Math.random();
  if (run < .04) {
    strike();
  }
  cloud += 3;
  if (cloud > 447) {
  cloud = -50;
  }
  
  frontCloud();
 
}

void strike() {
  stroke(251, 255, 117);
  yRange = (int)(Math.random()*400)+400;
  xStart = (int)(Math.random()*400);
  while (yEnd < yRange) {
    strokeW = strokeW * 0.97;
    if (strokeW > 0){ 
      strokeWeight(strokeW); }
    xChange = (int)(Math.random()*20 - 10);
    yChange = (int)(Math.random()*7 + 3);
    xEnd = xStart + xChange;
    yEnd = yStart + yChange;
    line(xStart, yStart, xEnd, yEnd);
    xStart = xEnd;
    yStart = yEnd;
  }
  yStart = 0;
  yEnd = 2;
  strokeW = 10;
  
}

void frontCloud() {
  stroke(160, 160, 160);
  fill(160, 160, 160);
  rect(0,0,400,50);
  ellipse((cloud-390),32,180,70);
  ellipse((cloud-356),27,100,120);
  ellipse((cloud-300),20,123,95);
  ellipse((cloud-230),25,60,80);
  ellipse((cloud-189),55,60,50);
  ellipse((cloud-129),30,175,102);
  ellipse(cloud,20,290,108);
  ellipse((cloud+146),32,90,100);
  ellipse((cloud+176),30,90,70);
  ellipse((cloud+270),30,180,120);  
  ellipse((cloud+350),25,80,100);
  ellipse((cloud+380),27,120,90);
  ellipse((cloud+430),30,70,103);
}

void backCloud() {

  stroke(150, 150, 150);
  fill(150, 150, 150);
  ellipse((cloud2-420),110,100,120);
  ellipse((cloud2-320),80,250,170);
  ellipse((cloud2-228),92,150,140);
  ellipse(cloud2-185,125,70,60);
  ellipse(cloud2-110,50,300,200);
  ellipse(cloud2,90,100,100);
  ellipse(cloud2+100,42,300,150);
  ellipse(cloud2+150,90,180,100);
  ellipse((cloud2+250),70,130,100);
  ellipse((cloud2+350),80,300,150);
  ellipse((cloud2+425),100,100,120);
}

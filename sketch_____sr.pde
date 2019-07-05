import processing.serial.*;
Serial port;

PImage img;

void setup() {
  port=new Serial(this, "COM3", 9600); //Port number for the Arduino board

  size(1222, 611);

  img=loadImage("dabeijinghh.png");
}


void draw() {
  image(img, 0, 0);
  smooth();
  strokeWeight(8);
  strokeJoin(BEVEL);//Tapered brush
  fill(100);
  rect(1110, 550, 48, 28);

  fill(10);
  text("帮助", 1122, 570);
  
  beginShape();
  vertex(mouseX, mouseY); //设置形状内点的坐标

  vertex(mouseX, mouseY-4);//A

  vertex(mouseX+14, mouseY-18);//B

  vertex(mouseX+18, mouseY-18);//C

  vertex(mouseX+22, mouseY-14);//D

  vertex(mouseX+22, mouseY-10);//E

  vertex(mouseX+16, mouseY-4);//F
  vertex(mouseX+36, mouseY+16);//G
  vertex(mouseX+34, mouseY+18);//H
  vertex(mouseX+14, mouseY-2);//I
    vertex(mouseX+8, mouseY+4);//J
    vertex(mouseX+4, mouseY+4);//K
    endShape(CLOSE); //结束形状的绘制
  if (mousePressed==true)
    if ((mouseX>=1110)&(mouseX<=1110+48)&(mouseY>=550)&(mouseY<=550+28))
    {  
      fill(10);
      text("通过敲击键盘或点击相应编钟来使编钟发声，如果使用键盘，第一排从左到右有字的编钟分别对应F1,F2,F3", 320, 580);
      text("第二排从左到右有字的编钟分别对应q，1，2，3，4，5", 445, 595);
    }
}
void mousePressed() {
  if ((mouseX>=280)&(mouseX<=400)&(mouseY>=220)&(mouseY<=390))
  {
    println("fd6");
    port.write("a");
  }
  if ((mouseX>=401)&(mouseX<=495)&(mouseY>=220)&(mouseY<=390))
  {
    println("f1");
    port.write("b");
  }
  if ((mouseX>=496)&(mouseX<=580)&(mouseY>=220)&(mouseY<=390))
  {
    println("f2");
    port.write("c");
  }
  if ((mouseX>=581)&(mouseX<=669)&(mouseY>=220)&(mouseY<=390))
  {
    println("f3");
    port.write("d");
  }
  if ((mouseX>=670)&(mouseX<=750)&(mouseY>=220)&(mouseY<=390))
  {
    println("f5");
    port.write("e");
  }
  if ((mouseX>=751)&(mouseX<=830)&(mouseY>=220)&(mouseY<=390))
  {
    println("f6");
    port.write("f");
  }
  if ((mouseX>=420)&(mouseX<=500)&(mouseY>=60)&(mouseY<=190))
  {
    println("fg1");
    port.write("g");
  }
  if ((mouseX>=501)&(mouseX<=550)&(mouseY>=60)&(mouseY<=190))
  {
    println("fg2");
    port.write("h");
  }
  if ((mouseX>=551)&(mouseX<=600)&(mouseY>=60)&(mouseY<=190))
  {
    println("fg3");
    port.write("i");
  }
  if ((mouseX>=280)&(mouseX<=830)&(mouseY>=391)&(mouseY<=491))
  {
    println("fd5");
    port.write("j");
  }
}

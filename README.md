# CreativeCoding_2019Summer-shanRui
###### 基于开源环境的创意建模作业

 姓名：**单瑞**
 学号：**518432910014**
 年级：**2018级设计学院工业设计专业本科生**

## 项目名称 
#### 五音编钟
**五音**是指中国传统五声音阶，即**宫商角徵羽**。“宫、商、角、徵、羽”（读音为gōng shāng jué zhǐ yǔ）是我国五声音阶中五个不同音的名称，类似现在简谱中的1、2、3、5、6。即宫等于1(Do)，商等于2(Re)，角等于3(Mi)，徵等于5(Sol)，羽等于6(La)，亦称作五音。\
**编钟**是中国汉族古代大型打击乐器，它用青铜铸成，由大小不同的扁圆钟按照音调高低的次序排列起来，悬挂在一个巨大的钟架上，用丁字形的木锤和长形的棒分别敲打铜钟，能发出不同的乐音，因为每个钟的音调不同，按照音谱敲打，可以演奏出美妙的乐曲。
## 创作背景
宫商角徵羽这五音是中国古乐基本音阶,是中华文化的瑰宝。\
编钟和中国音律是在这肥沃的黄土地上土生土长的古老民族音乐智慧。\
我们古老的音乐元素**应该被传承**，我希望做出一个可以让操作者直接感触到五音的程序。
## 创作思路
### 代码
通过processing写出交互界面，界面以中央的编钟为主体,如下面图片所示。\
![processing界面](https://github.com/justlikecards/CreativeCoding_2019Summer-shanRui/blob/master/dabeijinghh.png)\
当用鼠标点击某个编钟时，程序会根据鼠标点击位置通过建立好的通讯给arduino程序发送指令，比如点击了第二排左边第一个编钟
  ```
  void mousePressed() {
  if ((mouseX>=280)&(mouseX<=400)&(mouseY>=220)&(mouseY<=390))
  {
    println("fd6");
    port.write("a");
  }
  }//发出信号a
  ```
    
收到指令后，与串口连接的喇叭以一定频率振动发声，比如若收到“a”，则有如下代码（arduino）控制喇叭发声
 ```
 void loop(){
 if(Serial.available());
  c = Serial.read();

  if (c == 97)  //a的ASCII码值为97
  {
    tone(6, 294,1000);//df6
    
  }
 ```

同时，用代码（processing）写出一个跟随鼠标运动的小锤，使交互更加和谐，代码如下

```
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
  ```
另外，在程序里还设置了帮助按钮，降低用户学习成本，使用者点击就可以查看操作指引，通过下列代码（processing）实现
  ```
  if (mousePressed==true)
    if ((mouseX>=1110)&(mouseX<=1110+48)&(mouseY>=550)&(mouseY<=550+28))
    {  
      fill(10);
      text("通过鼠标控制小球敲击相应编钟来使编钟发声", 450, 580);
    
    }
  ```
 ### 电路图
 本项目电路图简洁明了，方便安装不易出错
 ![电路图](https://github.com/justlikecards/CreativeCoding_2019Summer-shanRui/blob/master/%E5%8D%95%E7%91%9E%20%E7%94%B5%E8%B7%AF%E5%9B%BE.pdf)
 
## 创作成果
成品能达到期望效果，通过加入常用的高低五音，我们不仅可以直观听到敲击不同编钟时的声音，甚至可以用它来演奏一些中国风歌曲

### 让我们借这个五音编钟程序一起细数音符里的中国味道吧
 





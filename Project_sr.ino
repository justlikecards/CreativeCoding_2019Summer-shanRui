
int c = 0;

void setup()
{
  Serial.begin(9600);  //比特率设置为一致方可通信
  pinMode(8, OUTPUT);
}


void loop(){
 if(Serial.available());
  c = Serial.read();

  if (c == 97)  //a的ASCII码值为97
  {
    tone(6, 294,1000);//df6
    
  }
  if (c == 98)//b的ASCII码值为98
  {
    tone(6, 349,1000);//f1

  }
  if (c == 99)//c的ASCII码值为99
  {
    tone(6, 393,1000);//f2

  }
    if (c == 100)//d的ASCII码值为100
  {
    tone(6, 438,1000);//f3

  }
 if (c == 101)//e的ASCII码值为101
  {
    tone(6, 516,1000);//f5

  }
   if (c == 102)//f的ASCII码值为102
  {
    tone(6, 587,1000);//f6

  }
  if (c == 103)//g的ASCII码值为103
  {
    tone(6, 700,1000);

  }
   if (c == 104)//h的ASCII码值为104
  {
    tone(6, 786,1000);

  }
   if (c == 105)//i的ASCII码值为105
  {
    tone(6, 882,1000);

  }
  if (c == 106)//j的ASCII码值为106
  {
    tone(6,262 ,1000);

  }




}

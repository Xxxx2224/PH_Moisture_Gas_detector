sbit LCD_RS at RC4_bit;
sbit LCD_EN at RC6_bit;
sbit LCD_RW at RC5_bit;
sbit LCD_D4 at RD4_bit;
sbit LCD_D5 at RD5_bit;
sbit LCD_D6 at RD6_bit;
sbit LCD_D7 at RD7_bit;
sbit LCD_RS_Direction at TRISC4_bit;
sbit LCD_RW_Direction at TRISC5_bit;
sbit LCD_EN_Direction at TRISC6_bit;
sbit LCD_D4_Direction at TRISD4_bit;
sbit LCD_D5_Direction at TRISD5_bit;
sbit LCD_D6_Direction at TRISD6_bit;
sbit LCD_D7_Direction at TRISD7_bit;
long int verinem=0;
long int verisicak=0;
long int verigaz=5;
char yaz[15];
char yaz1[15];
char yaz2[15];
void main(){
ANSEL = 0x03;
ANSELH = 0;
C1ON_bit = 0;
C2ON_bit = 0;
TRISD.B0=1;
PORTD.B0=0;
TRISB = 0x00;
PORTB=0x01;
Lcd_Init();
Lcd_Cmd(_LCD_CLEAR);
Lcd_Cmd(_LCD_CURSOR_OFF);
Lcd_Out(1,1,"CO");
Lcd_Out(2,1,"Sicaklik");
Lcd_Out(3,1,"Nem");
Lcd_Out(3,15,"%RH");
Lcd_Out(2,15,"C");
while(1){
Lcd_Out(1,1,"CO");
Lcd_Out(2,1,"Sicaklik");
Lcd_Out(3,1,"Nem");
Lcd_Out(3,15,"%RH");
Lcd_Out(2,15,"C");
verinem=ADC_Read(0);
IntToStr(verinem,yaz);
Lcd_Out(3,9,yaz);
verisicak=ADC_Read(1);
verisicak=verisicak/2;
IntToStr(verisicak,yaz1);
Lcd_Out(2,9,yaz1);
while(ADC_Read(0)>40){
Lcd_Cmd(_LCD_CLEAR);
Lcd_Out(1,1,"COK");
PORTB=0x84;
verinem=ADC_Read(0);
IntToStr(verinem,yaz);
Lcd_Out(3,1,yaz);
Lcd_Out(3,7,"%RH");
Lcd_Out(2,1,"NEM");
delay_ms(500);
Lcd_Cmd(_LCD_CLEAR);
}
while(ADC_Read(0)<10){
Lcd_Cmd(_LCD_CLEAR);
Lcd_Out(1,1,"AZ");
PORTB=0x84;
verinem=ADC_Read(0);
IntToStr(verinem,yaz);
Lcd_Out(3,1,yaz);
Lcd_Out(3,7,"%RH");
Lcd_Out(2,1,"NEM");
delay_ms(500);
Lcd_Cmd(_LCD_CLEAR);}
while(ADC_Read(1)/2<15){
Lcd_Cmd(_LCD_CLEAR);
Lcd_Out(1,1,"SOGUK");
PORTB=0x84;
verisicak=ADC_Read(1);
verisicak=verisicak/2;
IntToStr(verisicak,yaz);
Lcd_Out(3,1,yaz);
Lcd_Out(3,7,"C");
Lcd_Out(2,1,"SICAKLIK");
delay_ms(500);
Lcd_Cmd(_LCD_CLEAR);}
while(ADC_Read(1)/2>30){
Lcd_Cmd(_LCD_CLEAR);
Lcd_Out(1,1,"SICAK");
PORTB=0x84;
verisicak=ADC_Read(1);
verisicak=verisicak/2;
IntToStr(verisicak,yaz);
Lcd_Out(3,1,yaz);
Lcd_Out(2,1,"SICAKLIK");
Lcd_Out(3,7,"C");
delay_ms(500);
Lcd_Cmd(_LCD_CLEAR);
}
if(PORTD.B0==1){
 Lcd_Out(1,5,"GAZ");
  Lcd_Out(1,1,"CO");
  Lcd_Out(1,10,"Var");
  PORTB=0x84;
 delay_ms(1000);}
 if(PORTD.B0==0){
 delay_ms(500);
Lcd_Cmd(_LCD_CLEAR);
PORTB=0x01;

 }
}
}
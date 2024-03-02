
_main:

;MyProject.c,21 :: 		void main(){
;MyProject.c,22 :: 		ANSEL = 0x03;
	MOVLW      3
	MOVWF      ANSEL+0
;MyProject.c,23 :: 		ANSELH = 0;
	CLRF       ANSELH+0
;MyProject.c,24 :: 		C1ON_bit = 0;
	BCF        C1ON_bit+0, BitPos(C1ON_bit+0)
;MyProject.c,25 :: 		C2ON_bit = 0;
	BCF        C2ON_bit+0, BitPos(C2ON_bit+0)
;MyProject.c,26 :: 		TRISD.B0=1;
	BSF        TRISD+0, 0
;MyProject.c,27 :: 		PORTD.B0=0;
	BCF        PORTD+0, 0
;MyProject.c,28 :: 		TRISB = 0x00;
	CLRF       TRISB+0
;MyProject.c,29 :: 		PORTB=0x01;
	MOVLW      1
	MOVWF      PORTB+0
;MyProject.c,30 :: 		Lcd_Init();
	CALL       _Lcd_Init+0
;MyProject.c,31 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;MyProject.c,32 :: 		Lcd_Cmd(_LCD_CURSOR_OFF);
	MOVLW      12
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;MyProject.c,33 :: 		Lcd_Out(1,1,"CO");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr1_MyProject+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;MyProject.c,34 :: 		Lcd_Out(2,1,"Sicaklik");
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr2_MyProject+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;MyProject.c,35 :: 		Lcd_Out(3,1,"Nem");
	MOVLW      3
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr3_MyProject+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;MyProject.c,36 :: 		Lcd_Out(3,15,"%RH");
	MOVLW      3
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      15
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr4_MyProject+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;MyProject.c,37 :: 		Lcd_Out(2,15,"C");
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      15
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr5_MyProject+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;MyProject.c,38 :: 		while(1){
L_main0:
;MyProject.c,39 :: 		Lcd_Out(1,1,"CO");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr6_MyProject+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;MyProject.c,40 :: 		Lcd_Out(2,1,"Sicaklik");
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr7_MyProject+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;MyProject.c,41 :: 		Lcd_Out(3,1,"Nem");
	MOVLW      3
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr8_MyProject+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;MyProject.c,42 :: 		Lcd_Out(3,15,"%RH");
	MOVLW      3
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      15
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr9_MyProject+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;MyProject.c,43 :: 		Lcd_Out(2,15,"C");
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      15
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr10_MyProject+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;MyProject.c,44 :: 		verinem=ADC_Read(0);
	CLRF       FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+0, 0
	MOVWF      _verinem+0
	MOVF       R0+1, 0
	MOVWF      _verinem+1
	CLRF       _verinem+2
	CLRF       _verinem+3
;MyProject.c,45 :: 		IntToStr(verinem,yaz);
	MOVF       _verinem+0, 0
	MOVWF      FARG_IntToStr_input+0
	MOVF       _verinem+1, 0
	MOVWF      FARG_IntToStr_input+1
	MOVLW      _yaz+0
	MOVWF      FARG_IntToStr_output+0
	CALL       _IntToStr+0
;MyProject.c,46 :: 		Lcd_Out(3,9,yaz);
	MOVLW      3
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      9
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _yaz+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;MyProject.c,47 :: 		verisicak=ADC_Read(1);
	MOVLW      1
	MOVWF      FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+0, 0
	MOVWF      _verisicak+0
	MOVF       R0+1, 0
	MOVWF      _verisicak+1
	CLRF       _verisicak+2
	CLRF       _verisicak+3
;MyProject.c,48 :: 		verisicak=verisicak/2;
	MOVF       _verisicak+0, 0
	MOVWF      R0+0
	MOVF       _verisicak+1, 0
	MOVWF      R0+1
	MOVF       _verisicak+2, 0
	MOVWF      R0+2
	MOVF       _verisicak+3, 0
	MOVWF      R0+3
	RRF        R0+3, 1
	RRF        R0+2, 1
	RRF        R0+1, 1
	RRF        R0+0, 1
	BCF        R0+3, 7
	BTFSC      R0+3, 6
	BSF        R0+3, 7
	BTFSS      R0+3, 7
	GOTO       L__main19
	BTFSS      STATUS+0, 0
	GOTO       L__main19
	INCF       R0+0, 1
	BTFSC      STATUS+0, 2
	INCF       R0+1, 1
	BTFSC      STATUS+0, 2
	INCF       R0+2, 1
	BTFSC      STATUS+0, 2
	INCF       R0+3, 1
L__main19:
	MOVF       R0+0, 0
	MOVWF      _verisicak+0
	MOVF       R0+1, 0
	MOVWF      _verisicak+1
	MOVF       R0+2, 0
	MOVWF      _verisicak+2
	MOVF       R0+3, 0
	MOVWF      _verisicak+3
;MyProject.c,49 :: 		IntToStr(verisicak,yaz1);
	MOVF       R0+0, 0
	MOVWF      FARG_IntToStr_input+0
	MOVF       R0+1, 0
	MOVWF      FARG_IntToStr_input+1
	MOVLW      _yaz1+0
	MOVWF      FARG_IntToStr_output+0
	CALL       _IntToStr+0
;MyProject.c,50 :: 		Lcd_Out(2,9,yaz1);
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      9
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _yaz1+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;MyProject.c,51 :: 		while(ADC_Read(0)>40){
L_main2:
	CLRF       FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+1, 0
	SUBLW      0
	BTFSS      STATUS+0, 2
	GOTO       L__main20
	MOVF       R0+0, 0
	SUBLW      40
L__main20:
	BTFSC      STATUS+0, 0
	GOTO       L_main3
;MyProject.c,52 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;MyProject.c,53 :: 		Lcd_Out(1,1,"COK");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr11_MyProject+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;MyProject.c,54 :: 		PORTB=0x84;
	MOVLW      132
	MOVWF      PORTB+0
;MyProject.c,55 :: 		verinem=ADC_Read(0);
	CLRF       FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+0, 0
	MOVWF      _verinem+0
	MOVF       R0+1, 0
	MOVWF      _verinem+1
	CLRF       _verinem+2
	CLRF       _verinem+3
;MyProject.c,56 :: 		IntToStr(verinem,yaz);
	MOVF       _verinem+0, 0
	MOVWF      FARG_IntToStr_input+0
	MOVF       _verinem+1, 0
	MOVWF      FARG_IntToStr_input+1
	MOVLW      _yaz+0
	MOVWF      FARG_IntToStr_output+0
	CALL       _IntToStr+0
;MyProject.c,57 :: 		Lcd_Out(3,1,yaz);
	MOVLW      3
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _yaz+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;MyProject.c,58 :: 		Lcd_Out(3,7,"%RH");
	MOVLW      3
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      7
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr12_MyProject+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;MyProject.c,59 :: 		Lcd_Out(2,1,"NEM");
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr13_MyProject+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;MyProject.c,60 :: 		delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main4:
	DECFSZ     R13+0, 1
	GOTO       L_main4
	DECFSZ     R12+0, 1
	GOTO       L_main4
	DECFSZ     R11+0, 1
	GOTO       L_main4
	NOP
	NOP
;MyProject.c,61 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;MyProject.c,62 :: 		}
	GOTO       L_main2
L_main3:
;MyProject.c,63 :: 		while(ADC_Read(0)<10){
L_main5:
	CLRF       FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVLW      0
	SUBWF      R0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main21
	MOVLW      10
	SUBWF      R0+0, 0
L__main21:
	BTFSC      STATUS+0, 0
	GOTO       L_main6
;MyProject.c,64 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;MyProject.c,65 :: 		Lcd_Out(1,1,"AZ");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr14_MyProject+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;MyProject.c,66 :: 		PORTB=0x84;
	MOVLW      132
	MOVWF      PORTB+0
;MyProject.c,67 :: 		verinem=ADC_Read(0);
	CLRF       FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+0, 0
	MOVWF      _verinem+0
	MOVF       R0+1, 0
	MOVWF      _verinem+1
	CLRF       _verinem+2
	CLRF       _verinem+3
;MyProject.c,68 :: 		IntToStr(verinem,yaz);
	MOVF       _verinem+0, 0
	MOVWF      FARG_IntToStr_input+0
	MOVF       _verinem+1, 0
	MOVWF      FARG_IntToStr_input+1
	MOVLW      _yaz+0
	MOVWF      FARG_IntToStr_output+0
	CALL       _IntToStr+0
;MyProject.c,69 :: 		Lcd_Out(3,1,yaz);
	MOVLW      3
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _yaz+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;MyProject.c,70 :: 		Lcd_Out(3,7,"%RH");
	MOVLW      3
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      7
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr15_MyProject+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;MyProject.c,71 :: 		Lcd_Out(2,1,"NEM");
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr16_MyProject+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;MyProject.c,72 :: 		delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main7:
	DECFSZ     R13+0, 1
	GOTO       L_main7
	DECFSZ     R12+0, 1
	GOTO       L_main7
	DECFSZ     R11+0, 1
	GOTO       L_main7
	NOP
	NOP
;MyProject.c,73 :: 		Lcd_Cmd(_LCD_CLEAR);}
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
	GOTO       L_main5
L_main6:
;MyProject.c,74 :: 		while(ADC_Read(1)/2<15){
L_main8:
	MOVLW      1
	MOVWF      FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+0, 0
	MOVWF      R2+0
	MOVF       R0+1, 0
	MOVWF      R2+1
	RRF        R2+1, 1
	RRF        R2+0, 1
	BCF        R2+1, 7
	MOVLW      0
	SUBWF      R2+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main22
	MOVLW      15
	SUBWF      R2+0, 0
L__main22:
	BTFSC      STATUS+0, 0
	GOTO       L_main9
;MyProject.c,75 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;MyProject.c,76 :: 		Lcd_Out(1,1,"SOGUK");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr17_MyProject+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;MyProject.c,77 :: 		PORTB=0x84;
	MOVLW      132
	MOVWF      PORTB+0
;MyProject.c,78 :: 		verisicak=ADC_Read(1);
	MOVLW      1
	MOVWF      FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+0, 0
	MOVWF      _verisicak+0
	MOVF       R0+1, 0
	MOVWF      _verisicak+1
	CLRF       _verisicak+2
	CLRF       _verisicak+3
;MyProject.c,79 :: 		verisicak=verisicak/2;
	MOVF       _verisicak+0, 0
	MOVWF      R0+0
	MOVF       _verisicak+1, 0
	MOVWF      R0+1
	MOVF       _verisicak+2, 0
	MOVWF      R0+2
	MOVF       _verisicak+3, 0
	MOVWF      R0+3
	RRF        R0+3, 1
	RRF        R0+2, 1
	RRF        R0+1, 1
	RRF        R0+0, 1
	BCF        R0+3, 7
	BTFSC      R0+3, 6
	BSF        R0+3, 7
	BTFSS      R0+3, 7
	GOTO       L__main23
	BTFSS      STATUS+0, 0
	GOTO       L__main23
	INCF       R0+0, 1
	BTFSC      STATUS+0, 2
	INCF       R0+1, 1
	BTFSC      STATUS+0, 2
	INCF       R0+2, 1
	BTFSC      STATUS+0, 2
	INCF       R0+3, 1
L__main23:
	MOVF       R0+0, 0
	MOVWF      _verisicak+0
	MOVF       R0+1, 0
	MOVWF      _verisicak+1
	MOVF       R0+2, 0
	MOVWF      _verisicak+2
	MOVF       R0+3, 0
	MOVWF      _verisicak+3
;MyProject.c,80 :: 		IntToStr(verisicak,yaz);
	MOVF       R0+0, 0
	MOVWF      FARG_IntToStr_input+0
	MOVF       R0+1, 0
	MOVWF      FARG_IntToStr_input+1
	MOVLW      _yaz+0
	MOVWF      FARG_IntToStr_output+0
	CALL       _IntToStr+0
;MyProject.c,81 :: 		Lcd_Out(3,1,yaz);
	MOVLW      3
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _yaz+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;MyProject.c,82 :: 		Lcd_Out(3,7,"C");
	MOVLW      3
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      7
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr18_MyProject+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;MyProject.c,83 :: 		Lcd_Out(2,1,"SICAKLIK");
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr19_MyProject+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;MyProject.c,84 :: 		delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main10:
	DECFSZ     R13+0, 1
	GOTO       L_main10
	DECFSZ     R12+0, 1
	GOTO       L_main10
	DECFSZ     R11+0, 1
	GOTO       L_main10
	NOP
	NOP
;MyProject.c,85 :: 		Lcd_Cmd(_LCD_CLEAR);}
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
	GOTO       L_main8
L_main9:
;MyProject.c,86 :: 		while(ADC_Read(1)/2>30){
L_main11:
	MOVLW      1
	MOVWF      FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+0, 0
	MOVWF      R2+0
	MOVF       R0+1, 0
	MOVWF      R2+1
	RRF        R2+1, 1
	RRF        R2+0, 1
	BCF        R2+1, 7
	MOVF       R2+1, 0
	SUBLW      0
	BTFSS      STATUS+0, 2
	GOTO       L__main24
	MOVF       R2+0, 0
	SUBLW      30
L__main24:
	BTFSC      STATUS+0, 0
	GOTO       L_main12
;MyProject.c,87 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;MyProject.c,88 :: 		Lcd_Out(1,1,"SICAK");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr20_MyProject+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;MyProject.c,89 :: 		PORTB=0x84;
	MOVLW      132
	MOVWF      PORTB+0
;MyProject.c,90 :: 		verisicak=ADC_Read(1);
	MOVLW      1
	MOVWF      FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+0, 0
	MOVWF      _verisicak+0
	MOVF       R0+1, 0
	MOVWF      _verisicak+1
	CLRF       _verisicak+2
	CLRF       _verisicak+3
;MyProject.c,91 :: 		verisicak=verisicak/2;
	MOVF       _verisicak+0, 0
	MOVWF      R0+0
	MOVF       _verisicak+1, 0
	MOVWF      R0+1
	MOVF       _verisicak+2, 0
	MOVWF      R0+2
	MOVF       _verisicak+3, 0
	MOVWF      R0+3
	RRF        R0+3, 1
	RRF        R0+2, 1
	RRF        R0+1, 1
	RRF        R0+0, 1
	BCF        R0+3, 7
	BTFSC      R0+3, 6
	BSF        R0+3, 7
	BTFSS      R0+3, 7
	GOTO       L__main25
	BTFSS      STATUS+0, 0
	GOTO       L__main25
	INCF       R0+0, 1
	BTFSC      STATUS+0, 2
	INCF       R0+1, 1
	BTFSC      STATUS+0, 2
	INCF       R0+2, 1
	BTFSC      STATUS+0, 2
	INCF       R0+3, 1
L__main25:
	MOVF       R0+0, 0
	MOVWF      _verisicak+0
	MOVF       R0+1, 0
	MOVWF      _verisicak+1
	MOVF       R0+2, 0
	MOVWF      _verisicak+2
	MOVF       R0+3, 0
	MOVWF      _verisicak+3
;MyProject.c,92 :: 		IntToStr(verisicak,yaz);
	MOVF       R0+0, 0
	MOVWF      FARG_IntToStr_input+0
	MOVF       R0+1, 0
	MOVWF      FARG_IntToStr_input+1
	MOVLW      _yaz+0
	MOVWF      FARG_IntToStr_output+0
	CALL       _IntToStr+0
;MyProject.c,93 :: 		Lcd_Out(3,1,yaz);
	MOVLW      3
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _yaz+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;MyProject.c,94 :: 		Lcd_Out(2,1,"SICAKLIK");
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr21_MyProject+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;MyProject.c,95 :: 		Lcd_Out(3,7,"C");
	MOVLW      3
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      7
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr22_MyProject+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;MyProject.c,96 :: 		delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main13:
	DECFSZ     R13+0, 1
	GOTO       L_main13
	DECFSZ     R12+0, 1
	GOTO       L_main13
	DECFSZ     R11+0, 1
	GOTO       L_main13
	NOP
	NOP
;MyProject.c,97 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;MyProject.c,98 :: 		}
	GOTO       L_main11
L_main12:
;MyProject.c,99 :: 		if(PORTD.B0==1){
	BTFSS      PORTD+0, 0
	GOTO       L_main14
;MyProject.c,100 :: 		Lcd_Out(1,5,"GAZ");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      5
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr23_MyProject+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;MyProject.c,101 :: 		Lcd_Out(1,1,"CO");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr24_MyProject+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;MyProject.c,102 :: 		Lcd_Out(1,10,"Var");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      10
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr25_MyProject+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;MyProject.c,103 :: 		PORTB=0x84;
	MOVLW      132
	MOVWF      PORTB+0
;MyProject.c,104 :: 		delay_ms(1000);}
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main15:
	DECFSZ     R13+0, 1
	GOTO       L_main15
	DECFSZ     R12+0, 1
	GOTO       L_main15
	DECFSZ     R11+0, 1
	GOTO       L_main15
	NOP
	NOP
L_main14:
;MyProject.c,105 :: 		if(PORTD.B0==0){
	BTFSC      PORTD+0, 0
	GOTO       L_main16
;MyProject.c,106 :: 		delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main17:
	DECFSZ     R13+0, 1
	GOTO       L_main17
	DECFSZ     R12+0, 1
	GOTO       L_main17
	DECFSZ     R11+0, 1
	GOTO       L_main17
	NOP
	NOP
;MyProject.c,107 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;MyProject.c,108 :: 		PORTB=0x01;
	MOVLW      1
	MOVWF      PORTB+0
;MyProject.c,110 :: 		}
L_main16:
;MyProject.c,111 :: 		}
	GOTO       L_main0
;MyProject.c,112 :: 		}
L_end_main:
	GOTO       $+0
; end of _main

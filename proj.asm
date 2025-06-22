[org 0x0100]
jmp start
;{other Data
won:dw 0
lost:dw 0
player_cordinates: dw 0
player_score:dw 1000
string1:db'SCORE',0
string1Len:dw 5
string2:db'TIME',0
string2Len:dw 4
oldisr: dd   0
oldtimer:dd 0
randNum: dw 0
diamond: db '*'
;key: db '¤'
weapons: db '»'
enemy: db 0x01
isSupermanMode: dw 0
SuperManCount:dw 0
SuperManSeconds:dw 0
enemystring:db' Enemy  :  -25 '
weaponsString:db' Weapons : +10 '
DiamondString:db' Diamons : +15 '
KeysString:db' Keys    :  +5 '
strrlen:dw 15
enterStrig:db'Press Enter'
eslen:dw 11
wonnn:db'You  Won'
exxxit:db 'You Exit'
losttt:db'You Lost'
lwlen:dw 8
;timer stuff
tickcount: dw 0
scorecounter: dw 0
seccounter: dw 0
supermanOccured:dw 0
bonusString:db' ShiftR --> Superman '
bonusLen:dw 21


;music

music_length: dw 15644
music_data: incbin "gimmefan.imf"	
music_si: dw 1716

;}
;{Data for mazes
;----------------maze 1 data---------------------------------
maze1_v:dw 578,1698,414,570,396,1678,880,1522,1846,552,2154,724,388,0
maze1_vc:dw 6,10,11,10,10,9,6,10,6,10,6,5,5,0
maze1_h:dw 1522,560,2328,2648,2302,2624,2944,2966,2950,1664,1984,1348,862,1342,0
maze1_hc:dw 4,4,5,4,5,4,2,6,2,4,4,2,2,2,0
maze1_i:dw 1376,888,542,2464,2784,1024,0
;-------------------maze 2 data-----------------------------------
maze2_v:dw 550,1184,2146,2474,394,406,410,1202,1038,1678,1842,2966,2810,2814,1686,2338,1534,1538,574,418,0
maze2_vc:dw 2,2,2,5,10,6,11,2,2,9,8,2,2,3,5,6,2,2,5,5,0
maze2_h:dw 862,1024,1348,1824,2468,2786,3104,544,2644,1516,556,876,2334,2014,0
maze2_hc:dw 2,4,3,4,3,3,2,2,6,6,4,4,2,4,0
maze2_i:dw 384,1664,1668,1982,2302,2782,2150,2946,1512,396,2156,1216,1218,2466,0

;--------------------maze 3 data----------------------------------
maze3_v:dw 1024,708,550,1826,1668,394,1038,1678,2474,2638,1842,1202,406,1686,2966,2810,2814,410,1530,574,418,1534,1538,2818,0
maze3_vc:dw 3,3,2,4,2,11,2,2,5,3,8,2,6,5,2,2,3,3,4,4,4,2,2,3,0
maze3_h:dw 862,544,1348,2786,2468,3104,556,876,1516,2156,3110,2644,2328,1212,2014,2334,2498,0
maze3_hc:dw 2,2,3,3,2,2,4,4,6,2,2,6,2,4,4,3,2,0
maze3_i:dw 384,1030,1512,1830,1982,2302,2782,2150,2946,1210,2466,2154,2318,2636,396,1050,732,0
;--------------------maze 4 data----------------------------------
maze4_v:dw 384,1504,868,872,1196,1526,1210,894,578,0
maze4_vc:dw 6,10,12,10,6,4,8,12,16,0
maze4_h:dw 548,2946,2630,1998,1520,1198,874,2314,0
maze4_hc:dw 15,16,12,4,3,6,10,8,0
maze4_i:dw 1502,866,0
;--------------------maze 5 data----------------------------------
maze5_v:dw 578,1698,414,570,396,1678,880,1522,1846,552,2154,724,388,0
maze5_vc:dw 6,10,11,10,10,9,6,10,6,10,6,5,5,0
maze5_h:dw 1522,560,2328,2648,2302,2624,2944,2966,2950,1664,1984,1348,862,1342,0
maze5_hc:dw 4,4,5,4,5,4,2,6,2,4,4,2,2,2,0
maze5_i:dw 1376,888,542,2464,2784,1024,0
;--------------------maze 6 data----------------------------------
maze6_v:dw 384,1504,1218,1192,868,1992,1828,1992,1054,1690,0
maze6_vc:dw 6,10,14,2,5,2,5,2,9,4,0
maze6_h:dw 548,872,2946,2628,2312,1830,1996,1510,1526,1196,0
maze6_hc:dw 17,14,16,14,10,4,6,7,3,9,0
maze6_i:dw 866,1502,1846,0
;--------------------maze 7 data----------------------------------
maze7_v:dw 384, 1022, 1984, 548, 392, 1346, 2148, 2788, 1194, 396, 398, 1198, 1202, 574, 578, 2802, 2966,0
maze7_vc:dw 3, 7, 6, 8, 4, 2, 3, 3, 12, 4, 4, 13, 3, 12, 13, 3, 2,0
maze7_h:dw 1670, 1830, 2470, 564, 1042, 1686, 2166, 1842, 2322, 2648, 2970,0
maze7_hc:dw 2, 2, 2, 4, 5, 3, 3, 3, 3, 6, 6,0
maze7_i:dw 1024, 710, 2632, 1366, 1210, 2006,0
;--------------------maze 8 data----------------------------------
maze8_v:dw 384, 1022, 1984, 548, 392, 1346, 2148, 2788, 1194, 396, 398, 1198, 1202, 574, 578, 2802, 2966, 1854, 1858, 1036, 1190, 1990,0
maze8_vc:dw 3, 7, 6, 8, 4, 2, 3, 3, 12, 3, 3, 12, 3, 2, 2, 3, 2, 4, 5, 10, 3, 3,0
maze8_h:dw 1670, 2470, 564, 1042, 1686, 2166, 1842, 2322, 2648, 2970, 1212, 1534,0
maze8_hc:dw 2, 2, 4, 5, 3, 3, 3, 3, 6, 6, 4, 4,0
maze8_i:dw 1024, 710, 2632, 1366, 1210, 2006,0
;--------------------maze 9 data----------------------------------
maze9_h:dw 550, 1190, 1350, 872, 2310, 2628, 2788, 384, 702,1830,0
maze9_hc:dw 14, 14, 14, 14, 13, 14, 14, 2, 4,15,0
maze9_v:dw 420, 2338, 866, 2306,0
maze9_vc:dw 11,6,7,4,0
maze9_i:dw 2948, 2462, 2782, 1982, 1664, 1342, 868,1992,1998,2162,1516,1672,1686,0
;--------------------maze 10 data---------------------------------
mazea_v:dw 578,1698,414,570,396,1678,880,1522,1846,552,2154,724,388,0
mazea_vc:dw 6,10,11,10,10,9,6,10,6,10,6,5,5,0
mazea_h:dw 1522,560,2328,2648,2302,2624,2944,2966,2950,1664,1984,1348,862,1342,0
mazea_hc:dw 4,4,5,4,5,4,2,6,2,4,4,2,2,2,0
mazea_i:dw 1376,888,542,2464,2784,1024,1992,1998,2162,1516,1672,1686,0

;}




;---------------- this is my start (main)----------------
start:
;{
;call speakerOn

	mov ax,word[eslen]
	push ax
	mov ax,enterStrig
	push ax
	call startMenu
call music
	hookingKeyboardInterrupt:
	;{
			  xor  ax, ax 
              mov  es, ax             
              mov ax, [es:9*4] 
              mov [oldisr], ax        
              mov ax, [es:9*4+2] 
              mov [oldisr+2], ax     
              cli                    
              mov  word [es:9*4], movementISR 
              mov  [es:9*4+2], cs     
              sti 
	;}
	hookingTimerInterrupt:
	;{
		 xor ax, ax
		 mov es, ax 
		 mov ax, [es:8*4] 
         mov [oldtimer], ax        
         mov ax, [es:8*4+2] 
         mov [oldtimer+2], ax  
		 cli 
		 mov word [es:8*4],timer
		 mov [es:8*4+2], cs 
		 sti 
		 
	;}
	call printBackground
	call mazeOuline
	call GenRandNum
	


	check1: ;dividing into two parts to cater for short jumps
	;{
		cmp byte [randNum], 0
		je m1          ; Jump to m1 if [randNum] == 0
		cmp byte [randNum], 1
		je m2          ; Jump to m2 if [randNum] == 1
		cmp byte  [randNum], 2
		je m3          ; Jump to m3 if [randNum] == 2
		cmp byte [randNum], 3
		je m4          ; Jump to m4 if [randNum] == 3
		cmp byte [randNum], 4
		je m5          ; Jump to m5 if [randNum] == 4
		jmp check2
		
		m1:
		;{
			mov ax, maze1_v
			push ax
			mov ax, maze1_vc
			push ax
			mov ax, maze1_h
			push ax
			mov ax, maze1_hc
			push ax
			mov ax, maze1_i
			push ax
			jmp caller ; jmp to call function
		;}
		m2:
		;{
			mov ax, maze2_v
			push ax
			mov ax, maze2_vc
			push ax
			mov ax, maze2_h
			push ax
			mov ax, maze2_hc
			push ax
			mov ax, maze2_i
			push ax
			jmp caller ; jmp to call function
		;}
		m3:
		;{
			mov ax, maze3_v
			push ax
			mov ax, maze3_vc
			push ax
			mov ax, maze3_h
			push ax
			mov ax, maze3_hc
			push ax
			mov ax, maze3_i
			push ax
			jmp caller ; jmp to call function
		;}
		m4:
		;{
			mov ax, maze4_v
			push ax
			mov ax, maze4_vc
			push ax
			mov ax, maze4_h
			push ax
			mov ax, maze4_hc
			push ax
			mov ax, maze4_i
			push ax
			jmp caller ; jmp to call function
		;}
		m5:
		;{
		mov ax, maze5_v
		push ax
		mov ax, maze5_vc
		push ax
		mov ax, maze5_h
		push ax
		mov ax, maze5_hc
		push ax
		mov ax, maze5_i
		push ax
		jmp caller ; jmp to call function
	;}
	;}
	check2:
	;{
		cmp byte [randNum], 5
		je m6          ; Jump to m6 if [randNum] == 5
		cmp byte [randNum], 6
		je m7          ; Jump to m7 if [randNum] == 6
		cmp byte [randNum], 7
		je m8          ; Jump to m8 if [randNum] == 7
		cmp byte [randNum], 8
		je m9          ; Jump to m9 if [randNum] == 8
		cmp byte [randNum], 9
		je mA          ; Jump to mA if [randNum] == 9
			

		m6:
		;{
			mov ax, maze6_v
			push ax
			mov ax, maze6_vc
			push ax
			mov ax, maze6_h
			push ax
			mov ax, maze6_hc
			push ax
			mov ax, maze6_i
			push ax
			jmp caller ; jmp to call function
		;}
		m7:
		;{
			mov ax, maze7_v
			push ax
			mov ax, maze7_vc
			push ax
			mov ax, maze7_h
			push ax
			mov ax, maze7_hc
			push ax
			mov ax, maze7_i
			push ax
			jmp caller ; jmp to call function
		;}
		m8:
		;{
			mov ax, maze8_v
			push ax
			mov ax, maze8_vc
			push ax
			mov ax, maze8_h
			push ax
			mov ax, maze8_hc
			push ax
			mov ax, maze8_i
			push ax
			jmp caller ; jmp to call function
		;}
		m9:
		;{
			mov ax, maze9_v
			push ax
			mov ax, maze9_vc
			push ax
			mov ax, maze9_h
			push ax
			mov ax, maze9_hc
			push ax
			mov ax, maze9_i
			push ax
			jmp caller ; jmp to call function
		;}
		mA:
		;{
			mov ax, mazea_v
			push ax
			mov ax, mazea_vc
			push ax
			mov ax, mazea_h
			push ax
			mov ax, mazea_hc
			push ax
			mov ax, mazea_i
			push ax
			jmp caller ; jmp to call function
		;}
	;}
	
	
	caller:
		call MazeWalls
		
	call printPLayerInStart
	call printScoreString
	call printTimeString
	call printInstructions
	
	keyboardLoop:     
	;{    
	
			  mov  ah, 0              
              int  0x16                
              
			  cmp word[won],1
			  je unhookingKeyBoard
			  
			  cmp word[lost],1
			  je unhookingKeyBoard
			 ; call music
              cmp al, 27             
              jne keyboardLoop 
			  
	;}
	
	
	unhookingKeyBoard:
	 ;{
			  mov ax, [oldisr]        
              mov bx, [oldisr+2]      
              cli                     
              mov [es:9*4], ax        
              mov [es:9*4+2], bx    
              sti
	;}
	unhookingTimer:
	 ;{
			  mov ax, [oldtimer]        
              mov bx, [oldtimer+2]      
              cli                     
              mov [es:8*4], ax        
              mov [es:8*4+2], bx    
              sti
	;}
	
	cmp word[lost],1
	je lostMenu
	cmp word[won],1
	je wonMenu
	exit:
	;{
		mov dx, 388h
		mov al, 0xff
		out dx, al
		mov dx, 389h
		mov al, 0xff
		out dx, al
		mov ax,word[lwlen]
		push ax
		mov ax,exxxit
		push ax
		call startMenu
		jmp endd
	;}
	
	wonMenu:
	;{
		mov dx, 388h
		mov al, 0xff
		out dx, al
		mov dx, 389h
		mov al, 0xff
		out dx, al
		mov ax,word[lwlen]
		push ax
		mov ax,wonnn
		push ax
		call startMenu
		jmp endd
	;}
	 
	 lostMenu:
	 ;{
	 	mov dx, 388h
		mov al, 0xff
		out dx, al
		mov dx, 389h
		mov al, 0xff
		out dx, al
	 	mov ax,word[lwlen]
		push ax
		mov ax,losttt
		push ax
		call startMenu
		jmp endd
	
	 ;}
	 

	endd:
		mov dx, 388h
		mov al, 0xff
		out dx, al
		mov dx, 389h
		mov al, 0xff
		out dx, al
	
	
;	call speakerOff
	
	mov al,0x20
	out 0x20,al
	
	mov ax,0x4c00
	int 0x21

;}	



;-----------------function for random number generation---------------
GenRandNum:
;{
	push bp
	mov bp,sp;
	push cx
	push ax
	push dx;

	MOV AH, 00h ; interrupts to get system time
	INT 1AH ; CX:DX now hold number of clock ticks since midnight
	mov ax, dx
	xor dx, dx
	mov cx, 0ah;
	div cx ; here dx contains the remainder of the division
	;from 0 to 9


	mov word[randNum],dx;


	pop dx;
	pop ax;
	pop cx;
	pop bp;
ret

;}

;-------------------this function print my background------------------
printBackground:
;{
    push es 
    push ax 
    push di 

    mov  ax, 0xb800          
    mov  es, ax              
    mov  di, 0               

nextloc:      
    mov  word [es:di], 0x0720 
    add  di, 2
    cmp  di, 4000            
    jne  nextloc             

    pop  di 
    pop  ax 
    pop  es 
    ret 
;}

;---------------this subroutine prints outline of the maze--------
mazeOuline:
;{
	pusha
	push di
	push es
	
	mov ax,0xb800
	mov es,ax
	mov cx,22
	mov di,220
	mov ax,0x4420

	cld
	rep stosw
	
	mov cx,22
	mov di,3260
	rep stosw
	
	;---------------- Loop 1 --------------------
	mov di,540
	mov cx,17
	maze_loop1:
	;{
		mov word[es:di],ax
		add di,160
		loop maze_loop1
	;}
	
	;---------------- Loop 2 --------------------
	mov di,422
	mov cx,18
	maze_loop2:
	;{
		mov word[es:di],ax
		add di,160
		loop maze_loop2
	;}
	
	mov di,3300
	mov word[es:di],0x0720
	
	pop es
	pop di
	popa
ret
;}

;----------------prints walls------------------
MazeWalls:
;{
	push bp
	mov bp,sp
	pusha
	push es
	push di
	push si
	
	mov ax,0xb800
	mov es,ax
	
	mov ax,0x4420
	
	;{for independents
		mov si,[bp+4]
		mloop1:
		;{
			mov di,[si]
			cmp di,0
			je mOut1
			mov [es:di],ax
			add si,2
			jmp mloop1
		;}
		mOut1:
	;}
	
	;{for vertical printings
		mov si,[bp+12]
		mov di,[bp+10]
		mloop2:
		;{
			mov ax,[di]
			cmp ax,0
			je mOut2
			mov bx,[si]
			push bx
			push ax
			call printInRangeVertical
			add si,2
			add di,2
			jmp mloop2
		;}
		mOut2:
	;}
	
	;{for horizontal printings
		mov si,[bp+8]
		mov di,[bp+6]
		mloop3:
		;{
			mov ax,[di]
			cmp ax,0
			je mOut3
			mov bx,[si]
			push bx
			push ax
			call printInRangeHorizontal
			add si,2
			add di,2
			jmp mloop3
		;}
		mOut3:
	;}

	;{ print the collectibles

	
	
		;{for diamonds
			mov ax, 0xb800
			mov es, ax

			mov ah, 00001001b
			mov al, [diamond]

			mov di, 702
			mov cx, 2
			loopie:
			mov ah, 00001001b
			mov al, [diamond]

			mov [es:di],ax
			call GenRandNum
			add di,180
			mov bx, [randNum]
			shl bx,1
			add di, bx
			loop loopie

			mov di, 2622
			mov cx, 2
			loopie1:
			mov ah, 00001001b
			mov al, [diamond]

			mov [es:di],ax
			call GenRandNum
			add di,180
			mov bx, [randNum]
			shl bx,1
			add di, bx
			loop loopie1
		;}

		;{for keys
			
			mov ah, 00001110b
			mov al, 0xCF

			mov di, 1022
			mov cx, 2
			loopie2:
			mov ah,00001110b
			mov al, 0xCF

			mov [es:di],ax
			call GenRandNum
			add di,180
			mov bx, [randNum]
			shl bx,1
			add di, bx
			sub di, 8
			loop loopie2

			mov di, 1822
			mov cx, 2
			loopie3:
			mov ah, 00001110b
			mov al, 0xCF

			mov [es:di],ax
			call GenRandNum
			add di,180
			mov bx, [randNum]
			shl bx,1
			add di, bx
			sub di, 8
			loop loopie3
		;}


		;{for weapons

			
			mov ah, 00001010b
			mov al, [weapons]

			mov di, 876
			mov cx, 2
			loopie5:
			mov ah,00001010b
			mov al, [weapons]


			mov [es:di],ax
			call GenRandNum
			add di,180
			mov bx, [randNum]
			shl bx,1
			add di, bx
			sub di, 16
			loop loopie5

			mov di, 2630
			mov cx, 2
			loopie4:
			mov ah, 00001010b
			mov al, [weapons]
			mov [es:di],ax
			call GenRandNum
			add di,180
			mov bx, [randNum]
			shl bx,1
			add di, bx
			sub di, 12
			loop loopie4
		;}


		;{for enemies (only 2)

			
			mov ah, 00001100b
			mov al, [enemy]

			mov di, 1672
			mov cx, 2
			loopie8:
			mov ah,00001100b
			mov al, [enemy]


			mov [es:di],ax
			call GenRandNum
			add di,180
			mov bx, [randNum]
			shl bx,1
			add di, bx
			sub di, 16
			loop loopie8

		;}


    ;}
   
	
	pop si
	pop di
	pop es
	popa
	pop bp 
	ret 10
;}

;-----------------prints a vertical line------------------
printInRangeVertical:
;{
	push bp
	mov bp,sp
	pusha
	push di
	push es
	push si
	
	mov ax,0xb800
	mov cx,[bp+4]
	mov di,[bp+6]
	mov ax,0x4420
	
	v1_1:
	;{
		mov [es:di],ax
		add di,160
		loop v1_1
	;}
	
	pop si
	pop es
	pop di
	popa
	pop bp
ret 4
;}

;-----------------prints a horizontal line------------------
printInRangeHorizontal:
;{
	push bp
	mov bp,sp
	pusha
	push di
	push es
	push si
	
	mov ax,0xb800
	mov cx,[bp+4]
	mov di,[bp+6]
	mov ax,0x4420
	
	h1_1:
	;{
		mov [es:di],ax
		add di,2
		loop h1_1
	;}
	
	pop si
	pop es
	pop di
	popa
	pop bp
ret 4
;}
;----------------this function prints player at initial point--------------------
printPLayerInStart:
;{

		push ax
		push es
		push di
		
		mov ax,0xb800
		mov es,ax
		mov di,3300
		mov ax, 0x0701
		mov [es:di],ax
	    mov word[player_cordinates],di
		pop di
		pop es
		pop ax
ret
;}
;this subroutine manages the movements of Players
movementISR:
;{
				  push ax 
				  push es 
				  push dx
				  push bx
				  push di 
				  
				  
				  mov  ax, 0xb800 
				  mov  es, ax             
				  
				  in   al, 0x60    
	checkShift;
	;{
				  cmp  al, 0x36 
				  jne check_w
				  cmp word[cs:isSupermanMode],0
				  jne check_w
				  cmp word[cs:supermanOccured],1
				  je check_w
				  mov word[cs:isSupermanMode],1
				  mov word[cs:supermanOccured],1
	 
	;}
				  
	check_w:
	;{
				  cmp  al, 0x11          
				  jne  check_a           
				  mov di,[cs:player_cordinates]
				  mov dx,di
				  sub di,160
				  mov bx,word[es:di]
				  w_wall:
				  ;{
					  cmp bh,0x44
					  je check_a
				  ;}
				  w_enenmy:
				  ;{
					  cmp bl,0x01
					  jne w_weapon
					  cmp word[cs:isSupermanMode],1
					  je w_weapon
					  mov ax, word[cs:player_score]
					  sub ax,25
					  mov word[cs:player_score],ax
					  jmp w_new
				  ;}
				  w_weapon:
				  ;{
				      cmp bl,[cs:weapons]
					  jne w_keys
					  add word[cs:player_score],10
					  jmp w_new
				  ;}
				  w_keys:
				  ;{
					  cmp bl,0xCF
					  jne w_diamonds
					  add word[cs:player_score],5
					  jmp w_new
				  ;}
				  w_diamonds:
				  ;{
					  cmp bl,[cs:diamond]
					  jne w_new
					  add word[cs:player_score],15
				  ;}
				  w_new:
				  ;{
					  mov di,dx
					  mov  word [es:di], 0x0720 
					  sub di,160
					  mov  word [es:di], 0x0701
					  mov [cs:player_cordinates],di
					  jmp  nomatch  
				  ;}
				  
	;}		  
	check_a:     
	;{
				  cmp  al, 0x1E          
				  je  ihavenottoJump
				 jmp check_s
				 ihavenottoJump:
				  mov di,[cs:player_cordinates]
				  mov dx,di
				  sub di,2
				  mov bx,word[es:di]
				   a_wall:
				  ;{
					  cmp bh,0x44
					  je check_s
				  ;}
				  a_enenmy:
				  ;{
					  cmp bl,0x01
					  jne a_weapon
					  cmp word[cs:isSupermanMode],1
					  je a_weapon
					   mov ax, word[cs:player_score]
					  sub ax,25
					   mov word[cs:player_score],ax
					  jmp a_new
				  ;}
				  a_weapon:
				  ;{
				      cmp bl,[cs:weapons]
					  jne a_keys
					  add word[cs:player_score],10
					  jmp a_new
				  ;}
				  a_keys:
				  ;{
					  cmp bl,0xCF
					  jne a_diamonds
					  add word[cs:player_score],5
					  jmp a_new
				  ;}
				  a_diamonds:
				  ;{
					  cmp bl,[cs:diamond]
					  jne a_new
					  add word[cs:player_score],15
				  ;}
				  a_new:
				  ;{
					  mov di,dx
					  mov  word [es:di], 0x0720 
					  sub di,2
					  mov  word [es:di], 0x0701
					  mov [cs:player_cordinates],di
					  cmp di,380
					  jne check_s
					  mov word[cs:won],1
					  jmp  nomatch  
				  ;}
	;}
	check_s:    
	;{
				  cmp  al, 0x1F          
				  jne  check_d           
				  
				  mov di,[cs:player_cordinates]
				  cmp di,3300
				  je check_d
				  mov dx,di
				  add di,160
				  mov bx,word[es:di]
				   s_wall:
				  ;{
					  cmp bh,0x44
					  je check_d
				  ;}
				  s_enenmy:
				  ;{
					  cmp bl,0x01
					  jne s_weapon
					  cmp word[cs:isSupermanMode],1
					  je s_weapon
					   mov ax, word[cs:player_score]
					  sub ax,25
					  mov word[cs:player_score],ax
					  jmp s_new
				  ;}
				  s_weapon:
				  ;{
				      cmp bl,[cs:weapons]
					  jne s_keys
					  add word[cs:player_score],10
					  jmp s_new
				  ;}
				  s_keys:
				  ;{
					  cmp bl,0xCF
					  jne s_diamonds
					  add word[cs:player_score],5
					  jmp s_new
				  ;}
				  s_diamonds:
				  ;{
					  cmp bl,[cs:diamond]
					  jne s_new
					  add word[cs:player_score],15
				  ;}
				  s_new:
				  ;{
					  mov di,dx
					  mov  word [es:di], 0x0720 
					  add di,160
					  mov  word [es:di], 0x0701
					  mov [cs:player_cordinates],di   
					  jmp  nomatch    
				  ;}
	;}	  
	check_d:  
	;{
				  cmp  al, 0x20          
				  jne  nomatch           
				  mov di,[cs:player_cordinates]
				  mov dx,di
				  add di,2
				  mov bx,word[es:di]
				  d_wall:
				  ;{
					  cmp bh,0x44
					  je nomatch
				  ;}
				  d_enenmy:
				  ;{
					  cmp bl,0x01
					  jne d_weapon
					  cmp word[cs:isSupermanMode],1
					  je d_weapon
					   mov ax, word[cs:player_score]
					  sub ax,25
					  mov word[cs:player_score],ax
					  jmp d_new
				  ;}
				  d_weapon:
				  ;{
				      cmp bl,[cs:weapons]
					  jne d_keys
					  add word[cs:player_score],10
					  jmp d_new
				  ;}
				  d_keys:
				  ;{
					  cmp bl,0xCF
					  jne d_diamonds
					  add word[cs:player_score],5
					  jmp d_new
				  ;}
				  d_diamonds:
				  ;{
					  cmp bl,[cs:diamond]
					  jne d_new
					  add word[cs:player_score],15
				  ;}
				  d_new:
				  ;{
					  mov di,dx
					  mov  word [es:di], 0x0720 
					  add di,2
					  mov  word [es:di], 0x0701
					  mov [cs:player_cordinates],di    
				  ;}
				   
	;}	  
	
	nomatch:     
	;{			
	  
	  
					mov cx,5
					mov ax,0xb800
					mov es,ax
					mov di,466
					mov ax,0x0720
					rep stosw
				  mov ax,word[player_score]
				  push ax
				  mov di,466
				  call printnum
				  
				  pop di
				  pop bx
				  pop dx
				  pop es 
				  pop ax 
				  
				  jmp far [cs:oldisr]     
    ;}
;}
;this function prints SCORE strings
printScoreString:
;{
			push ax
			push di
			
			  mov di,306
			  push di
			  mov  ax, string1 
              push ax                 
              push word [cs:string1Len]    
              call printstr 
			pop di
			pop ax
ret			  
;}
;this function prints time strings
printTimeString:
;{

			
			push ax
			push di
			
			  mov di,162
			  push di
			  mov  ax, string2
              push ax                 
              push word [cs:string2Len]    
              call printstr 
			pop di
			pop ax
ret			  
;}
printnum:  
;{			
			  push bp 
              mov  bp, sp 
              push es 
              push ax 
              push bx 
              push cx 
              push dx 
              push di 
              mov  ax, 0xb800 
              mov  es, ax             ; point es to video base 
              mov  ax, [bp+4]         ; load number in ax 
              mov  bx, 10             ; use base 10 for division 
              mov  cx, 0              ; initialize count of digits 
			nextdigit:    
           ;{   
			  mov  dx, 0              ; zero upper half of dividend 
              div  bx                 ; divide by 10 
              add  dl, 0x30           ; convert digit into ascii value 
              push dx                 ; save ascii value on stack 
              inc  cx                 ; increment count of values  
              cmp  ax, 0              ; is the quotient zero 
              jnz  nextdigit          ; if no divide it again 
			;}
              ;mov  di, 0              ; point di to top left column 
			  nextpos: 
			  ;{
			  pop  dx                 ; remove a digit from the stack 
              mov  dh, 0x07           ; use normal attribute 
              mov [es:di], dx         ; print char on screen 
              add  di, 2              ; move to next screen location 
              loop nextpos            ; repeat for all digits on stack
			  ;}
              pop  di 
              pop  dx 
              pop  cx 
              pop  bx 
              pop  ax 
              pop  es 
              pop  bp 
              ret  2 
;}
;this function prints instructions
printInstructions:
;{
	pusha
	push es
	push di
	
	mov ax,0xb800
	mov es,ax
	
	mov di,642
	mov ah, 00001001b
	mov al,[cs:diamond]
	mov [es:di],ax
	add di,320
	mov ah, 00001110b
	mov al, 0xCF
	mov [es:di],ax
	add di,320
	mov ah, 00001010b
	mov al, [weapons]
	mov [es:di],ax
	add di,320
	mov ah, 00001100b
	mov al, [enemy]
	mov [es:di],ax
	
	mov di,646
	push di
	mov ax,DiamondString
	push ax
	push word[cs:strrlen]
	call printstr
	
	mov di,966
	push di
	mov ax,KeysString
	push ax
	push word[cs:strrlen]
	call printstr
	
	mov di,1286
	push di
	mov ax,weaponsString
	push ax
	push word[cs:strrlen]
	call printstr
	
	
	mov di,1606
	push di
	mov ax,enemystring
	push ax
	push word[cs:strrlen]
	call printstr
	
	mov di,1926
	push di
	mov ax,bonusString
	push ax
	push word[cs:bonusLen]
	call printstr
	
	pop di
	pop es
	popa
ret
;}

;this function prints strings
printstr: 
;{  
			push bp
			mov bp,sp
			push ax
			push cx
			push si
			push di
			push es
			
			mov ax,0xb800
			mov es,ax
			mov di,[bp+8]
			mov si,[bp+6]
			mov cx,[bp+4]
			mov ah,0x40
			
			nexxt:
			mov al,[si]
			mov [es:di],ax
			inc si
			add di,2
			loop nexxt
		
		
		pop es
		pop di
		pop si
		pop cx
		pop ax
		pop bp
		ret 6
;}
; this is my hooked timer
timer:
;{
call music
    push ax
    push bx
    push cx
	push es
	push di
    inc word [cs:tickcount] ; Increment tick count

	cmp word [isSupermanMode],0
	je noSupe
	inc word[SuperManSeconds]
	cmp word [SuperManSeconds], 19
	jl noSupe
	
	
		
	mov word [SuperManSeconds], 0
	add word[player_score],2
	inc word [SuperManCount]
	mov cx,5
	mov ax,0xb800
	mov es,ax
	mov di,466
	mov ax,0x0720
	rep stosw
	
	mov ax,word[player_score]
	
		push ax
		mov di,466
		call printnum
		
	
	cmp word[SuperManCount],11
	jl noSupe	
	
	mov word [isSupermanMode],0
	mov word [SuperManCount] , 0
	

  noSupe: 
  
    mov ax, word [cs:tickcount] 
    cmp ax, 18
    jle skipinc

    inc word [cs:seccounter]
    inc word [scorecounter]
    cmp word[cs:seccounter],120
    jne k
    mov word[cs:lost],1
    k:
    cmp word [scorecounter], 10
    jl skipdec

    mov word [scorecounter], 0
	cmp word[isSupermanMode],1
	je skipdec
	sub word [player_score],10
	
	
	mov cx,5
	mov ax,0xb800
	mov es,ax
	mov di,466
	mov ax,0x0720
	rep stosw
	
	mov ax,word[player_score]
	
		push ax
		mov di,466
		call printnum

skipdec:
     mov word [cs:tickcount], 0
     push word [cs:seccounter]
     mov di, 172
    call printnum      ; Print tick count

skipinc:
    mov al, 0x20
    out 0x20, al            ; End of interrupt
	
	pop di
	pop es
    pop cx
    pop bx
    pop ax
    iret                    ; Return from interrupt
;}
startMenu:
;{
		push bp
		mov bp,sp
		pusha
		push es
		push di
		
		
		
		mov ax,0xb800
		mov es,ax
		mov di,0
		mov ax,0x0720
		mov cx,2000
		
	
		cld
	    rep	stosw
		
		mov ax,0x4420
		mov cx,15
		mov dx,1020
		looopss:
		;{
			mov di,dx
			add dx,160
			push cx
			mov cx,22
			rep stosw
			pop cx
		
		loop looopss
		;}
		
		mov di,2152
		push di
		mov si,[bp+4]
		push si
		mov ax,[bp+6]
		push ax
		call printstr
		
		mov ah,0
		int 0x16
		
		
		pop di
		pop es
		popa
		pop bp
		ret
;}
music:
;{
		push si
		push dx
		push ax
		push bx
		push cx
		mov si, word [music_si]
	.next_note:
		mov dx, 388h
		mov al, [si + music_data + 0];register address
		out dx, al
		mov dx, 389h
		mov al, [si + music_data + 1]; register value
		out dx, al
		mov bx, [si + music_data + 2]; timing
		add si, 4
	.repeat_delay:
		mov cx, 600
	.delay:
	;	mov ah, 1
	;	int 16h
	;	jnz st
		loop .delay
		dec bx
		jg .repeat_delay
	;	cmp si, [music_length]
	;	jb .next_note
	mov word [music_si] , si
	st:
		mov dx, 388h
		mov al, 0xff
		out dx, al
		mov dx, 389h
		mov al, 0xff
		out dx, al
		mov bx, 0
		pop cx
		pop bx
		pop ax
		pop dx
		pop si
ret


speakerOn:
        and     ax, 0xfffe
        push    ax
        cli
        mov     al, 0xb6
        out     0x43, al
        pop     ax
        out     0x42, al
        mov     al, ah
        out     0x42, al
        in      al, 0x61
        mov     al, ah
        or      al, 3
        out     0x61, al
        sti
    ret
	
	
	speakerOff:
        in      al, 0x61
        and     al, 0xfc
        out     0x61, al
        ret
;}

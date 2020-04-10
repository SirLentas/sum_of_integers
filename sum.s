.data
array: 
 .byte 41, 52, 111, 84, 119, 103, 48, 21
 .byte 38, 80, 117, 78, 40, 63, 55, 110
 .byte 74, 4, 1, 102, 6, 126, 92, 26
 .byte 38, 63, 22, 47, 33, 83, 113, 9
 .byte 39, 108, 91, 100, 13, 10, 17, 115
 .byte 1, 62, 80, 107, 20, 92, 28, 91
 .byte 59, 10, 20, 85, 23, 118, 98, 32
 .byte 87, 89, 97, 16, 124, 114, 92, 64
 .byte 34, 7, 23, 52, 87, 42, 14, 56
 .byte 15, 125, 113, 110, 20, 113, 9, 119
 .byte 71, 50, 81, 15, 87, 29, 13, 10
 .byte 88, 19, 53, 54, 115, 20, 76, 75
 .byte 116, 50, 69, 31, 7, 0, 67, 67
 .byte 98, 24, 7, 20, 50, 34, 68, 43
 .byte 0, 22, 47, 114, 107, 79, 17, 2
 .byte 110, 82, 17, 94, 3, 2, 33, 80
 .byte 94, 114, 45, 7, 50, 7, 123, 1
 .byte 119, 92, 100, 34, 90, 95, 67, 96
 .byte 86, 19, 78, 106, 91, 46, 72, 54
 .byte 74, 76, 30, 85, 11, 79, 93, 4
 .byte 11, 9, 65, 90, 85, 6, 36, 104
 .byte 46, 93, 4, 102, 103, 98, 24, 18
 .byte 43, 85, 110, 100, 26, 35, 53, 94
 .byte 2, 125, 42, 105, 93, 86, 45, 34
 .byte 10, 4, 27, 8, 86, 13, 80, 116
 .byte 85, 123, 12, 52, 26, 42, 9, 60
 .byte 65, 77, 1, 86, 2, 97, 3, 63
 .byte 20, 38, 45, 119, 43, 63, 104, 105
 .byte 82, 54, 123, 14, 6, 111, 66, 41
 .byte 31, 97, 69, 106, 25, 0, 123, 100
 .byte 69, 49, 29, 66, 84, 95, 3, 28
 .byte 106, 81, 73, 94, 15, 116, 8, 40
 .byte 73, 60, 79, 112, 24, 76, 95, 19
 .byte 37, 121, 35, 109, 115, 111, 1, 28
 .byte 79, 5, 122, 44, 60, 97, 48, 72
 .byte 81, 83, 66, 10, 15, 40, 49, 44
 .byte 52, 125, 37, 57, 42, 8, 53, 71
 .byte 105, 122, 67, 44, 37, 87, 82, 117
 .byte 89, 14, 5, 39, 75, 114, 46, 26
 .byte 1, 70, 10, 104, 23, 88, 50, 83
 .byte 70, 38, 54, 122, 66, 81, 122, 96
 .byte 92, 103, 104, 26, 9, 80, 80, 17
 .byte 74, 97, 71, 71, 122, 98, 70, 114
 .byte 23, 13, 54, 117, 122, 70, 0, 0
 .byte 24, 42, 100, 80, 82, 29, 17, 2
 .byte 74, 3, 124, 52, 106, 69, 3, 23
 .byte 108, 85, 119, 46, 46, 75, 105, 58
 .byte 29, 82, 9, 48, 118, 126, 51, 25
 .byte 42, 69, 61, 96, 43, 43, 124, 93
 .byte 115, 93, 22, 3, 121, 103, 25, 49
 .byte 120, 12, 112, 1, 47, 15, 54, 98
 .byte 3, 7, 103, 35, 47, 85, 19, 19
 .byte 101, 0, 107, 84, 15, 0, 106, 34
 .byte 119, 77, 110, 15, 77, 44, 110, 26
 .byte 10, 105, 61, 113, 46, 87, 108, 99
 .byte 26, 106, 100, 95, 46, 104, 13, 105
 .byte 28, 34, 79, 93, 33, 104, 52, 13
 .byte 99, 114, 106, 114, 102, 84, 2, 16
 .byte 37, 38, 6, 53, 72, 21, 120, 58
 .byte 39, 122, 51, 1, 105, 25, 52, 29
 .byte 8, 68, 101, 58, 113, 123, 85, 100
 .byte 41, 51, 23, 72, 44, 103, 123, 85
 .byte 54, 53, 35, 13
sum: .space 100
mask1: .word 0x8080808080808080
mask2: .word 0x7F7F7F7F7F7F7F7F
.text
main:

daddi r20,r0,56
daddi r21,r0,48
daddi r22,r0,40
daddi r23,r0,32
daddi r24,r0,24
daddi r25,r0,16
daddi r26,r0,8
daddi r27,r0,255
ld r28,mask1(r0)
ld r29,mask2(r0)

    daddi r30,r0,128


    daddi r3,r0,496
	ld r4,array(r2)
    daddi r2,r2,8 #i++
    ld r5,array(r2)
    daddi r2,r2,8 #i++
	daddu r6,r4,r5 #8 arithmoi + 8 arithmoi
    and r19,r6,r28
    dsrl r19,r19,7  #peroume to 8 bit se periptosi overflow kai to vazoume ston r19 
    and r6,r6,r29 # diagrafoume to 8 bit an ine assos apo ton r6 me mia maska 
#sto loop kathe fora prosthetoume 8 arithmous kateuthian kai aferoume to bit iperxilisis kai to vazoume ston r19  
loop:
    ld r4,array(r2)
    daddi r2,r2,8 #i++
    daddu r6,r6,r4 #8 arithmoi + 8 arithmoi
    and r18,r6,r28 
    dsrl r18,r18,7  #peroume to 8 bit se periptosi overflow kai to vazoume ston r18 prosorina
    daddu r19,r19,r18 # prosthetoume to bit iperxilisis sto 19
    and r6,r6,r29 # diagrafoume to 8 bit an ine assos apo ton r6 me mia maska 
    
    ld r4,array(r2)
    daddi r2,r2,8 #i++
    daddu r6,r6,r4 #8 arithmoi + 8 arithmoi
    and r18,r6,r28 
    dsrl r18,r18,7  #peroume to 8 bit se periptosi overflow kai to vazoume ston r18 prosorina
    daddu r19,r19,r18 # prosthetoume to bit iperxilisis sto 19
    and r6,r6,r29 # diagrafoume to 8 bit an ine assos apo ton r6 me mia maska 

    ld r4,array(r2)
    daddi r2,r2,8 #i++
    daddu r6,r6,r4 #8 arithmoi + 8 arithmoi
    and r18,r6,r28 
    dsrl r18,r18,7  #peroume to 8 bit se periptosi overflow kai to vazoume ston r18 prosorina
    daddu r19,r19,r18 # prosthetoume to bit iperxilisis sto 19
    and r6,r6,r29 # diagrafoume to 8 bit an ine assos apo ton r6 me mia maska 
    
    ld r4,array(r2)
    daddi r2,r2,8 #i++
    daddu r6,r6,r4 #8 arithmoi + 8 arithmoi
    and r18,r6,r28 
    dsrl r18,r18,7  #peroume to 8 bit se periptosi overflow kai to vazoume ston r18 prosorina
    daddu r19,r19,r18 # prosthetoume to bit iperxilisis sto 19
    and r6,r6,r29 # diagrafoume to 8 bit an ine assos apo ton r6 me mia maska 

    ld r4,array(r2)
    daddi r2,r2,8 #i++
    daddu r6,r6,r4 #8 arithmoi + 8 arithmoi
    and r18,r6,r28 
    dsrl r18,r18,7  #peroume to 8 bit se periptosi overflow kai to vazoume ston r18 prosorina
    daddu r19,r19,r18 # prosthetoume to bit iperxilisis sto 19
    and r6,r6,r29 # diagrafoume to 8 bit an ine assos apo ton r6 me mia maska 

    ld r4,array(r2)
    daddi r2,r2,8 #i++
    daddu r6,r6,r4 #8 arithmoi + 8 arithmoi
    and r18,r6,r28 
    dsrl r18,r18,7  #peroume to 8 bit se periptosi overflow kai to vazoume ston r18 prosorina
    daddu r19,r19,r18 # prosthetoume to bit iperxilisis sto 19
    and r6,r6,r29 # diagrafoume to 8 bit an ine assos apo ton r6 me mia maska 
    
    ld r4,array(r2)
    daddi r2,r2,8 #i++
    daddu r6,r6,r4 #8 arithmoi + 8 arithmoi
    and r18,r6,r28 
    dsrl r18,r18,7  #peroume to 8 bit se periptosi overflow kai to vazoume ston r18 prosorina
    daddu r19,r19,r18 # prosthetoume to bit iperxilisis sto 19
    and r6,r6,r29 # diagrafoume to 8 bit an ine assos apo ton r6 me mia maska 

    ld r4,array(r2)
    daddi r2,r2,8 #i++
    daddu r6,r6,r4 #8 arithmoi + 8 arithmoi
    and r18,r6,r28 
    dsrl r18,r18,7  #peroume to 8 bit se periptosi overflow kai to vazoume ston r18 prosorina
    daddu r19,r19,r18 # prosthetoume to bit iperxilisis sto 19
    and r6,r6,r29 # diagrafoume to 8 bit an ine assos apo ton r6 me mia maska 
    
    ld r4,array(r2)
    daddi r2,r2,8 #i++
    daddu r6,r6,r4 #8 arithmoi + 8 arithmoi
    and r18,r6,r28 
    dsrl r18,r18,7  #peroume to 8 bit se periptosi overflow kai to vazoume ston r18 prosorina
    daddu r19,r19,r18 # prosthetoume to bit iperxilisis sto 19
    and r6,r6,r29 # diagrafoume to 8 bit an ine assos apo ton r6 me mia maska 

    ld r4,array(r2)
    daddi r2,r2,8 #i++
    daddu r6,r6,r4 #8 arithmoi + 8 arithmoi
    and r18,r6,r28 
    dsrl r18,r18,7  #peroume to 8 bit se periptosi overflow kai to vazoume ston r18 prosorina
    daddu r19,r19,r18 # prosthetoume to bit iperxilisis sto 19
    and r6,r6,r29 # diagrafoume to 8 bit an ine assos apo ton r6 me mia maska 

    

	bne r3,r2,loop

    #sum = oi 8 arithmoi pou vriskonte ston r6 + oi 8 arithmoi pou vriskonte ston r19 * 128 o kathenas

    dsrlv r8,r6,r20  #FF00.0000.0000.0000 prostheti sto sum ton proto arithimo apo ton kataxoriti (to kommati pou egrapsa FF)
    dsrlv r9,r19,r20 #FF00.0000.0000.0000 perni apo ton kataxoriti r19 ta bit iperxilisis tou protou arithmou
    ; dmul r17,r9,r30  #ta pollaplasiazi me 128 giati kathe 1 bit iperxilisis otan ta prosthetame itan 128
    dsll r17,r9,7
    daddu r7,r7,r8  

    dsrlv r8,r6,r21  #00FF.0000.0000.0000
    and r8,r8,r27
    dsrlv r9,r19,r21
    and r9,r9,r27 
    daddu r7,r7,r17  

   
    ; dmul r17,r9,r30
    dsll r17,r9,7
    daddu r7,r7,r8
    dsrlv r8,r6,r22  #0000.FF00.0000.0000
    and r8,r8,r27
    dsrlv r9,r19,r22
    and r9,r9,r27
    daddu r7,r7,r17

  
    ; dmul r17,r9,r30
    dsll r17,r9,7
    daddu r7,r7,r8
    dsrlv r8,r6,r23  #0000.00FF.0000.0000
    and r8,r8,r27
    dsrlv r9,r19,r23
    and r9,r9,r27
    daddu r7,r7,r17


    ; dmul r17,r9,r30
    dsll r17,r9,7
    daddu r7,r7,r8
    dsrlv r8,r6,r24  #0000.0000.FF00.0000
    and r8,r8,r27
    dsrlv r9,r19,r24
    and r9,r9,r27
    daddu r7,r7,r17


    ; dmul r17,r9,r30
    dsll r17,r9,7
    daddu r7,r7,r8
    dsrlv r8,r6,r25 #0000.0000.00FF.0000
    and r8,r8,r27
    dsrlv r9,r19,r25
    and r9,r9,r27
    daddu r7,r7,r17

  
    ; dmul r17,r9,r30
    dsll r17,r9,7
    daddu r7,r7,r8
    dsrlv r8,r6,r26 #0000.0000.0000.FF00
    and r8,r8,r27
    dsrlv r9,r19,r26
    and r9,r9,r27
    daddu r7,r7,r17


    ; dmul r17,r9,r30
    dsll r17,r9,7
    daddu r7,r7,r8
    and r8,r6,r27  #0000.0000.0000.00FF
    and r9,r19,r27
    daddu r7,r7,r17


    ; dmul r17,r9,r30
    dsll r17,r9,7
    ld r6,array(r2)
    daddu r7,r7,r8
    
    ; ld r6,array(r2)
    dsrlv r8,r6,r24  #0000.0000.FF00.0000
    and r8,r8,r27
    daddu r7,r7,r8

    daddu r7,r7,r17

#prothetoume tous 4 teleuteou arithmous pou perisseuoun 496-500
    ; ld r6,array(r2)
    ; dsrlv r8,r6,r24  #0000.0000.FF00.0000
    ; and r8,r8,r27
    ; daddu r7,r7,r8

    dsrlv r8,r6,r25 #0000.0000.00FF.0000
    and r8,r8,r27
    daddu r7,r7,r8

    dsrlv r8,r6,r26 #0000.0000.0000.FF00
    and r8,r8,r27
    daddu r7,r7,r8

    and r8,r6,r27  #0000.0000.0000.00FF
    daddu r7,r7,r8
	sw r7,sum(r0)
	halt
#enable forwarding + branch target buffer
#exi kapia stall kapia stall pou logika ftiaxnonte 
#lipi to tipoma stin othoni tou sum
#mperdepsa ligo ton kodika gia na kerdiso stall read after write - des to proigoume programa an thes na katalavis kalitera ti pezi

.data
	xDir:			.word 1		
	ySpeed:			.word -1	
	yDir:			.word -1	
	P1Score:		.word 0
	P2Score:		.word 0
	compCount:		.word 0
	compSpeed:		.word 0		
	Level:			.word 6
	colorOne:		.word 0x00ff8000
	colorTwo:		.word 0x00c00080
	ballColor:		.word 0x00ffffff
	backgroundColor:	.word 0x00000000
	blueColor:		.word 0x0012fff7
	mode:			.word 0  
					 
					 

.text

NewGame:
	jal ClearBoard

	Lines:
		li $a0, 10 
		li $a1, 13 
		lw $a2, colorTwo
		li $a3, 18 
		jal DrawHorizontalLine
		
		li $a1, 14
		jal DrawHorizontalLine
		
		li $a0, 46
		li $a3, 54
		jal DrawHorizontalLine
		
		li $a1, 13
		jal DrawHorizontalLine
		
		li $a0, 10
		li $a1, 15
		lw $a2, blueColor
		li $a3, 18 
		jal DrawHorizontalLine
		
		li $a1, 16 
		jal DrawHorizontalLine
		
		li $a0, 46
		li $a3, 54 
		jal DrawHorizontalLine
		
		li $a1, 15
		jal DrawHorizontalLine
		
		li $a0, 10
		li $a1, 17
		lw $a2, colorOne
		li $a3, 18
		jal DrawHorizontalLine
		
		li $a1, 18
		jal DrawHorizontalLine
		
		li $a0, 46
		li $a3, 54
		jal DrawHorizontalLine
		
		li $a1, 17
		jal DrawHorizontalLine	
		
	PONG:
		li $a0, 21
		li $a1, 13
		lw $a2, ballColor
		li $a3, 18
		jal DrawVerticalLine
		
		li $a0, 27
		jal DrawVerticalLine
		
		li $a0, 31
		jal DrawVerticalLine
		
		li $a0, 33
		jal DrawVerticalLine
		
		li $a0, 37
		jal DrawVerticalLine
		
		li $a0, 39
		jal DrawVerticalLine
		
		li $a0, 34 
		li $a1, 13
		li $a3, 14
		jal DrawVerticalLine
	
		li $a0, 35
		li $a1, 15
		li $a3, 16
		jal DrawVerticalLine
		
		li $a0, 25
		li $a1, 14
		jal DrawVerticalLine
		
		li $a0, 22
		li $a1, 16
		li $a3, 24
		jal DrawHorizontalLine
	
		li $a0, 22
		li $a1, 16
		li $a3, 25
		jal DrawHorizontalLine
	
		li $a1, 13
		jal DrawHorizontalLine
		
		li $a0, 27
		li $a3, 30
		jal DrawHorizontalLine
	
		li $a1, 18
		jal DrawHorizontalLine
		
		li $a0, 40
		li $a3, 43
		jal DrawHorizontalLine
		
		li $a1, 13
		jal DrawHorizontalLine
		
		li $a0, 41
		li $a1, 16
		jal DrawHorizontalLine
		
		li $a0, 36
		li $a1, 17
		jal DrawPoint
		
		li $a0, 43
		jal DrawPoint
	
	Press1or2:
		li $a0, 35
		li $a1, 25
		li $a3, 29
		jal DrawVerticalLine
		
		li $a0, 17
		jal DrawVerticalLine
		
		li $a0, 19
		jal DrawVerticalLine
		
		li $a0, 21
		jal DrawVerticalLine
		
		li $a0, 39
		jal DrawVerticalLine
		
		li $a0, 41
		jal DrawVerticalLine
		
		li $a0, 43
		jal DrawVerticalLine
		
		li $a0, 45
		jal DrawVerticalLine
		
		li $a0, 12
		jal DrawVerticalLine
		
		li $a3, 15
		jal DrawHorizontalLine
		
		li $a1, 27
		jal DrawHorizontalLine
		
		li $a0, 15
		li $a1, 26
		li $a3, 27
		jal DrawVerticalLine
		
		li $a0, 18
		li $a1, 25
		li $a3, 27
		jal DrawVerticalLine
		
		li $a0, 22
		li $a1, 27
		jal DrawPoint
		
		li $a1, 29
		jal DrawPoint
		
		li $a1, 25
		jal DrawPoint
		
		li $a0, 24 
		li $a1, 29
		li $a3, 26
		jal DrawHorizontalLine
		
		li $a0, 24
		li $a1, 27
		jal DrawHorizontalLine
		
		li $a1, 25
		jal DrawHorizontalLine
		
		li $a1, 26
		jal DrawPoint
		
		li $a0, 26
		li $a1, 28
		jal DrawPoint
		
		li $a0, 22
		li $a1, 25
		jal DrawPoint
		
		li $a0, 34
		li $a1, 26
		jal DrawPoint
		
		li $a1, 29
		li $a3, 36
		jal DrawHorizontalLine

		li $a0, 40
		jal DrawPoint
		
		li $a1, 25
		jal DrawPoint

		li $a0, 44
		li $a3, 27
		jal DrawVerticalLine
			
		li $a0, 49
		li $a1, 25
		li $a3, 50
		jal DrawHorizontalLine
	
		li $a1, 28
		jal DrawPoint
	
		li $a0, 50
		li $a1, 29
		jal DrawPoint
		
		li $a1, 27
		jal DrawPoint
	
		li $a0, 51
		li $a1, 26
		jal DrawPoint
	
		li $a0, 48
		jal DrawPoint
		
		li $a1, 29
		li $a3, 51
		jal DrawHorizontalLine

		li $a0, 28
		li $a3, 30
		jal DrawHorizontalLine
	
		li $a1, 27
		jal DrawHorizontalLine
		
		li $a1, 25
		li $a3, 30
		jal DrawHorizontalLine
	
		li $a1, 26
		jal DrawPoint
	
		li $a0, 30
		li $a1, 28
		jal DrawPoint
		
		li $a1, 26
		lw $a2, backgroundColor
		jal DrawPoint
		
		li $a0, 19
		li $a1, 27
		jal DrawPoint
		
		li $a0, 45
		jal DrawPoint
		
		li $a0, 44
		li $a1, 26
		jal DrawPoint
		
		li $a0, 18
		jal DrawPoint
		
SelectMode:
		lw $t1, 0xFFFF0004		
		beq $t1, 0x00000031, SetOnePlayerMode 
		beq $t1, 0x00000032, SetTwoPlayerMode 
		
		li $a0, 250	
		li $v0, 32	
		syscall		
		
		j SelectMode    
		
SetOnePlayerMode:
		li $t1, 1
		j BeginGame
SetTwoPlayerMode:
		li $t1, 2
BeginGame:
		sw $zero, 0xFFFF0000		
		sw $t1, mode
		
		

NewRound:

		
		li $t0, 1
		li $t1, -1
		sw $t0, ySpeed
		sw $t1, yDir
		sw $zero, compSpeed 	
		sw $zero, compCount
		
		li $s0, 0 	
		li $s1, 0	
		lw $s2, xDir	
		lw $s3, ySpeed	
		li $s4, 13
		li $s5, 13
		li $s6, 32
		li $s7, 0

		jal ClearBoard
		
		lw $a2, P1Score
		li $a3, 1
		jal DrawScore
		lw $a2, P2Score
		li $a3, 54
		jal DrawScore
		
		li $a0, 13
		move $a1, $s4
		lw $a2, colorOne
		jal DrawPaddle
		
		li $a0, 50
		move $a1, $s5
		lw $a2, colorTwo
		jal DrawPaddle

		li $a0, 1000	
		li $v0, 32	
		syscall		

DrawObjects:
		move $a0, $s6
		move $a1, $s7
		jal CheckForCollisions
		jal MoveBall
		
		li $a0, 13
		move $a1, $s4
		lw $a2, colorOne
		move $a3, $s0
		jal DrawPaddle
		move $s4, $a1	
		move $s0, $a3	
		
		li $a0, 50		
		move $a1, $s5
		lw $a2, colorTwo
startAi:
		lw $t1, mode
		bne $t1, 1, endAi 	
		
		lw $t0, compCount 	
		addi $t0, $t0, -1	
		sw $t0, compCount
		bgt $t0, 0, endAi
		lw $t0, compSpeed 	
		sw $t0, compCount
		addi $t1, $s5, 2	
		blt $t1, $s7, goDown	
		li $s1, 0x01000000
		j endAi	
goDown: 
		li $s1, 0x02000000
endAi:
		move $a3, $s1
		jal DrawPaddle
		move $s5, $a1	
		move $s1, $a3	

Begin_standby:	
		li $t0, 0x00000002			
	
Standby:
		blez $t0, EndStandby
		li $a0, 10	
		li $v0, 32	
		syscall		
		
		addi $t0, $t0, -1 		
		
		lw $t1, 0xFFFF0000		
		blez $t1, Standby
				
		jal AdjustDir			
		sw $zero, 0xFFFF0000		
		j Standby
EndStandby:		
		j DrawObjects

DrawPaddle:
	
	beq $a3, 0x02000000, down
	bne $a3, 0x01000000, NoMove
	up:
		
   		move $t2, $a2
   		move $t1, $a1
   		addi $a1, $a1, 5	
		lw $a2, backgroundColor
		addi $sp, $sp, -4
   		sw $ra, 0($sp)   	
		jal DrawPoint
		lw $ra, 0($sp)		
   		addi $sp, $sp, 4	
   		move $a1, $t1	
   		move $a2, $t2	
   		
		
		beq $a1, 0, NoMove
		addi $a1, $a1, -1
		j Move
	down:
		
		move $t1, $a2
		lw $a2, backgroundColor
		addi $sp, $sp, -4
   		sw $ra, 0($sp)   	
		jal DrawPoint
		lw $ra, 0($sp)		
   		addi $sp, $sp, 4	
   		move $a2, $t1	
   		
		
		beq $a1, 26, NoMove	
		addi $a1, $a1, 1
		j Move
	NoMove:
		
		li $a3, 0
	Move:
		li $t0, 6
	StartPLoop:
		subi $t0, $t0, 1
		addu $t1, $a1, $t0
		
		
		sll $t1, $t1, 6   
		addu $v0, $a0, $t1
		sll $v0, $v0, 2
		addu $v0, $v0, $gp
		
		sw $a2, ($v0)
		beqz $t0, EndPLoop
		j StartPLoop
	EndPLoop:		
		jr $ra
			
DrawScore:
		addi $sp, $sp, -12	
   		sw $ra, 0($sp)
   		sw $s2, 4($sp)
   		sw $a2, 8($sp)
   		
   		move $s2, $a2
   		lw $a2, ballColor
   		ble $s2, 5, DrawScoreRow1
   	DrawScoreRow2:			
   	
   		sub $t1, $s2, 6
   		sll $t1, $t1, 1
   		add $a0, $t1, $a3
   		li $a1, 3
   		jal DrawPoint
   		
   		addi $s2, $s2 -1
   		
   		bge $s2, 6, DrawScoreRow2
   		
	DrawScoreRow1:			
		beq $s2, $zero, DrawScoreEnd
		sub $t1, $s2, 1
		sll $t1, $t1, 1
   		add $a0, $t1, $a3
   		li $a1, 1
   		jal DrawPoint
   		
   		addi $s2, $s2, -1
   		
   		j DrawScoreRow1
	
	DrawScoreEnd:
		lw $ra, 0($sp)		
		lw $s2, 4($sp)
		lw $a2, 8($sp)
   		addi $sp, $sp, 12
		
		jr $ra
	
MoveBall:		
		
		lw $a2, backgroundColor
		addi $sp, $sp, -4
   		sw $ra, 0($sp)   	
		jal DrawPoint
		lw $ra, 0($sp)		
   		addi $sp, $sp, 4	
   		
   		add $s6, $s6, $s2	

   		addi $s3, $s3, -1
   		bgt $s3, 0, NoYChange
ChangeY:
		lw $t0, yDir	
		add $s7, $s7, $t0
		lw $s3, ySpeed
NoYChange:

   		

		move $a0, $s6
		move $a1, $s7
		lw $a2, ballColor
	
DrawPoint:
		sll $t0, $a1, 6   
		addu $v0, $a0, $t0
		sll $v0, $v0, 2
		addu $v0, $v0, $gp
		sw $a2, ($v0)		
		
		jr $ra

DrawHorizontalLine:
		
		addi $sp, $sp, -4
   		sw $ra, 0($sp)
		
		sub $t9, $a3, $a0
		move $t1, $a0
		
	HorizontalLoop:
		
		add $a0, $t1, $t9
		jal DrawPoint
		addi $t9, $t9, -1
		
		bge $t9, 0, HorizontalLoop
		
		lw $ra, 0($sp)		
   		addi $sp, $sp, 4

		jr $ra

DrawVerticalLine:

		addi $sp, $sp, -4
   		sw $ra, 0($sp)
		
		sub $t9, $a3, $a1
		move $t1, $a1
		
	VerticalLoop:
		
		add $a1, $t1, $t9
		jal DrawPoint
		addi $t9, $t9, -1
		
		bge $t9, 0, VerticalLoop
		
		lw $ra, 0($sp)		
   		addi $sp, $sp, 4
   		
		jr $ra
		


AdjustDir: 
		lw $a0, 0xFFFF0004		
		
AdjustDir_left_up:
		bne $a0, 97, AdjustDir_left_down  
		li $s0, 0x01000000	
		j AdjustDir_done		

AdjustDir_left_down:
		bne $a0, 122, AdjustDir_right_up	
		li $s0, 0x02000000	
		j AdjustDir_done

AdjustDir_right_up:
		bne $a0, 107, AdjustDir_right_down 
		li $s1, 0x01000000	
		j AdjustDir_done

AdjustDir_right_down:
		bne $a0, 109, AdjustDir_none	
		li $s1, 0x02000000	
		j AdjustDir_done

AdjustDir_none:
						
AdjustDir_done:
		jr $ra				

CheckForCollisions:
		beq $s6, 0, POneRoundLoss
		beq $s6, 63, PTwoRoundLoss
		bne $s6, 14, NoLeftCollision	
LeftCollision:
		blt $s7, $s4, NoPaddleCollision	
		addi $t3, $s4, 5		
		bgt $s7, $t3, NoPaddleCollision	
		sub $t3, $s7, $s4		
		li $s2, 1			
		j PaddleHit
   		
NoLeftCollision:
		bne $s6, 49, NoPaddleCollision	
RightCollision:
		blt $s7, $s5, NoPaddleCollision	
		addi $t3, $s5, 5
		bgt $s7, $t3, NoPaddleCollision	
		sub $t3, $s7, $s5		
		li $s2, -1			
		j PaddleHit		

NoPaddleCollision:
		j CheckHorizontalHit
		
PaddleHit: 
		addi $sp, $sp, -8
   		sw $a0, 0($sp)   	
   		sw $a1, 4($sp)
		
		li $a0, 80		
		li $a1, 80
		li $a2, 32
		li $a3, 127
		li $v0, 31
		syscall
		
   		lw $a0, 0($sp)   	
   		lw $a1, 4($sp)
   		addi $sp, $sp, 8
		
		lw $t4, Level		
		sw $t4, compSpeed
		beq $t3, 0, tophigh
		beq $t3, 1, topmid
		beq $t3, 2, toplow
		beq $t3, 3, bottomhigh
		beq $t3, 4, bottommid
		beq $t3, 5, bottomlow
tophigh:
		li $s3, 1
		sw $s3, ySpeed
		li $s3, -1
		sw $s3, yDir
		j CheckHorizontalHit
topmid:
		li $s3, 2
		sw $s3, ySpeed
		li $s3, -1
		sw $s3, yDir
		j CheckHorizontalHit
toplow:
		li $s3, 4
		sw $s3, ySpeed
		li $s3, -1
		sw $s3, yDir
		j CheckHorizontalHit
bottomhigh:
		li $s3, 4
		sw $s3, ySpeed
		li $s3, 1
		sw $s3, yDir
		j CheckHorizontalHit
bottommid:
		li $s3, 2
		sw $s3, ySpeed
		li $s3, 1
		sw $s3, yDir
		j CheckHorizontalHit
bottomlow:
		li $s3, 1
		sw $s3, ySpeed
		li $s3, 1
		sw $s3, yDir
		
CheckHorizontalHit:
		beq $s7, 31, HorizontalWallHit
		bne $s7, 0, NoCollision
		
HorizontalWallHit: 
		
		addi $sp, $sp, -8
   		sw $a0, 0($sp)   	
   		sw $a1, 4($sp)
		
   		lw $a0, 0($sp)   	
   		lw $a1, 4($sp)
   		addi $sp, $sp, 8
   		
		
		bgt $s3, 1, NoCollision
		lw $t4, yDir
		xori $t4, $t4, 0xffffffff
		addi $t4, $t4, 1
		sw $t4, yDir
NoCollision:
		jr $ra


ClearBoard:
		lw $t0, backgroundColor
		li $t1, 8192 
	StartCLoop:
		subi $t1, $t1, 4
		addu $t2, $t1, $gp
		sw $t0, ($t2)
		beqz $t1, EndCLoop
		j StartCLoop
	EndCLoop:
		jr $ra
		
POneRoundLoss:
		
		lw $t1, P2Score
		addi $t1, $t1, 1
		sw $t1, P2Score
		
		
		li $t2, 1
		sw $t2, xDir
		
		li $a3, 54
		sw $zero, 0xFFFF0004   
		beq $t1, 10, EndGame
		
		j PlayPointSound
PTwoRoundLoss:	
		
		lw $t1, P1Score
		addi $t1, $t1, 1
		sw $t1, P1Score
		
		
		li $t2, -1
		sw $t2, xDir
		
		li $a3, 1
		sw $zero, 0xFFFF0004 
		beq $t1, 10, EndGame

PlayPointSound:
		
		li $a0, 80		
		li $a1, 300
		li $a2, 121
		li $a3, 127
		li $v0, 31
		syscall
   		
   		j NewRound
	

EndGame:
		jal ClearBoard
		
		lw $t0, P1Score
		bne $t0, 10, WinTwo
		
		
	WinOne:	li $a0, 34 
		li $a1, 12 
		lw $a2, ballColor 
		li $a3, 15 
		jal DrawVerticalLine
		
		li $a0, 33
		li $a1, 13
		jal DrawPoint
		
		li $a1, 16 
		li $a3, 35 
		jal DrawHorizontalLine
		
		j WinP
		
	WinTwo:	li $a0, 33 
		li $a1, 16 
		lw $a2, ballColor 
		li $a3, 36 
		jal DrawHorizontalLine
	
		li $a0, 34 
		li $a1, 12 
		li $a3, 35 
		jal DrawHorizontalLine
	
		li $a1, 15
		jal DrawPoint
	
		li $a0, 35
		li $a1, 16
		jal DrawPoint
	
		li $a1, 14
		jal DrawPoint
	
		li $a0, 36
		li $a1, 13
		jal DrawPoint
	
		li $a0, 33
		jal DrawPoint
		
	WinP:	li $a0, 27 
		li $a1, 12 
		li $a3, 16 
		jal DrawVerticalLine
		
		li $a0, 30 
		li $a3, 14 
		jal DrawVerticalLine
		
		li $a0, 28 
		li $a3, 29 
		jal DrawHorizontalLine
	
		li $a1, 14 
		jal DrawHorizontalLine

		li $a0, 100 	
		li $v0, 32	
		syscall		
		
		sw $zero, 0xFFFF0000

WaitForReset:		
		li $a0, 10 	
		li $v0, 32	
		syscall		
		
		lw $t0, 0xFFFF0000
		beq $t0, $zero, WaitForReset
		
		j Reset
		
Reset:		
		sw $zero, P1Score
		sw $zero, P2Score
		sw $zero, 0xFFFF0000	
		sw $zero, 0xFFFF0004
		
		jal ClearBoard
		
		j NewGame

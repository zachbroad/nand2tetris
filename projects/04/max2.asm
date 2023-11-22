// R2 = max(R0,R1)
// if (R0 > R1) then R2 = R0
// else R2 = R1

	@14
	D=A
	@R0
	M=D

	@15
	D=A
	@R1
	M=D

	// R3 is original r0
	@R0
	D=M
	@R3
	M=D

	// R4 is original r1
	@R1
	D=M
	@R4
	M=D

(LOOP)
	// If R1 is less than 0, its more than r0 so r2=r0
	@R1
	D=M
	@CONDGT
	D;JLT


	// If R0 is less than 0, it's less than so r2=r1
	@R0
	D=M
	@CONDLT
	D;JLT

	// Do the decrement because both > 0
	@R1
	M=M-1
	@R0
	M=M-1

	@LOOP
	0;JMP
(CONDGT)
	// r2 = r0
	@R3
	D=M
	@R2
	M=D

	// Skip CONDLT
	@CONT
	0;JMP

(CONDLT)
	// r2 = r1
	@R4
	D=M
	@R2
	M=D

(CONT)
	// Anything else here


(END)
	@END
	0;JMP
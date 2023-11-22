	@R0
	M=-1

	// if R0 >= 0
	// JGE jump gt eq

	@R0
	D=M

	// Jump to 1
	@SET
	D;JGE 

	// Set to -1
	@R1
	M=-1
	@END
	0;JMP

// set r = -1
(SET)
	@R1
	M=1

(END)
	@END
	0;JMP



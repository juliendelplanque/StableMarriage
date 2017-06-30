initialization
setUp
	a := SMContender new.
	b := SMContender new.
	c := SMContender new.
	
	a preferences: { b . c }
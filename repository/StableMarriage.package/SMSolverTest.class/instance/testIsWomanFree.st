tests-testing
testIsWomanFree
	self
		assert: (solver isWomanFree: w1);
		assert: (solver isWomanFree: w2);
		assert: (solver isWomanFree: w3).
	
	solver
		marry: m1 with: w1;
		marry: m2 with: w2;
		marry: m3 with: w3.
		
	self
		deny: (solver isWomanFree: w1);
		deny: (solver isWomanFree: w2);
		deny: (solver isWomanFree: w3).
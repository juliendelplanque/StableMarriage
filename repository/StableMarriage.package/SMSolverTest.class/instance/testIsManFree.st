tests-testing
testIsManFree
	self
		assert: (solver isManFree: m1);
		assert: (solver isManFree: m2);
		assert: (solver isManFree: m3).
	
	solver
		marry: m1 with: w1;
		marry: m2 with: w2;
		marry: m3 with: w3.
		
	self
		deny: (solver isManFree: m1);
		deny: (solver isManFree: m2);
		deny: (solver isManFree: m3).
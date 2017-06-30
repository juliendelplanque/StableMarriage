tests-testing
testWomanPreferOver
	self
		assert: (solver woman: w1 prefer: m1 over: m3);
		deny: (solver woman: w1 prefer: m3 over: m1)
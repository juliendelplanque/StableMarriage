tests-testing
testPreferOver
	self
		assert: (a prefer: b over: c);
		deny: (a prefer: c over: b)
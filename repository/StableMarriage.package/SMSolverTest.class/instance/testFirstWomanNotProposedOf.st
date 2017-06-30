tests-accessing
testFirstWomanNotProposedOf
	self
		assert: (solver firstWomanNotProposedOf: m1) equals: w3;
		assert: (solver firstWomanNotProposedOf: m1) equals: w2;
		assert: (solver firstWomanNotProposedOf: m1) equals: w1;
		assert: (solver firstWomanNotProposedOf: m2) equals: w2;
		assert: (solver firstWomanNotProposedOf: m2) equals: w3;
		assert: (solver firstWomanNotProposedOf: m2) equals: w1;
		assert: (solver firstWomanNotProposedOf: m3) equals: w1;
		assert: (solver firstWomanNotProposedOf: m3) equals: w2;
		assert: (solver firstWomanNotProposedOf: m3) equals: w3
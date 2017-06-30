tests-accessing
testMarriageOfWoman
	solver
		marry: m1 with: w1.
	
	self
		assert: (solver marriageOfWoman: w1) equals: (SMMariage new man: m1; woman: w1; yourself)
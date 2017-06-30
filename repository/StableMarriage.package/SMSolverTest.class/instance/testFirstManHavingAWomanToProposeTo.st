tests-accessing
testFirstManHavingAWomanToProposeTo
	self
		assert: solver firstManHavingAWomanToProposeTo equals: m1.
	
	m1
		nextPreferenceToPropose;
		nextPreferenceToPropose;
		nextPreferenceToPropose.
	
	self
		assert: solver firstManHavingAWomanToProposeTo equals: m2.
	
	m2
		nextPreferenceToPropose;
		nextPreferenceToPropose;
		nextPreferenceToPropose.
	
	self
		assert: solver firstManHavingAWomanToProposeTo equals: m3.
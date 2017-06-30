tests-testing
testStillHasPreference
	self
		assert: a stillHasPreference.
	a nextPreferenceToPropose.
	self
		assert: a stillHasPreference.
	a nextPreferenceToPropose.
	self
		deny: a stillHasPreference
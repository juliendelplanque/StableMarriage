tests-accessing
testNextPreferenceToPropose
	self
		assert: a nextPreferenceToPropose equals: b;
		assert: a nextPreferenceToPropose equals: c;
		should: [ a nextPreferenceToPropose ] raise: Error
accessing
firstManHavingAWomanToProposeTo
	^ self men detect: [ :man | man isFree and: [ man stillHasPreference ] ] ifNone: [ nil ]
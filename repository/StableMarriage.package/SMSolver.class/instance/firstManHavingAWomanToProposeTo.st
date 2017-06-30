accessing
firstManHavingAWomanToProposeTo
	^ self men detect: [ :man | (self isManFree: man) and: [ man stillHasPreference ] ] ifNone: [ nil ]
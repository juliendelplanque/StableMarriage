testing
prefer: aContender over: anotherContender
	self preferences do: [ :pref |
		pref = aContender
			ifTrue: [ ^ true ].
		pref = anotherContender
			ifTrue: [ ^ false ] ].
	"Should never reach the next statement since each contender defines his preferences for all the others."
	^ false
computation
stableMatching
	|man|
	[ (man := self firstManHavingAWomanToProposeTo) isNotNil ]
		whileTrue: [ | woman|
			woman := man nextPreferenceToPropose.
			woman isFree
				ifTrue: [ 
					self marry: man with: woman ]
				ifFalse: [ |actualMariage|
					actualMariage := woman marriage.
					(woman prefer: man over: actualMariage man)
						ifTrue: [ 
							self divorce: actualMariage.
							self marry: man with: woman ] ] ]
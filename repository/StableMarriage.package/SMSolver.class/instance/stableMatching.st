computation
stableMatching
	|man|
	[ (man := self firstManHavingAWomanToProposeTo) isNotNil ]
		whileTrue: [ | woman|
			woman := self firstWomanNotProposedOf: man.
			(self isWomanFree: woman)
				ifTrue: [ 
					self marry: man with: woman ]
				ifFalse: [ |actualMariage|
					actualMariage := self marriageOfWoman: woman.
					(self woman: woman prefer: man over: actualMariage man)
						ifTrue: [ 
							self divorce: actualMariage.
							self marry: man with: woman ] ] ]
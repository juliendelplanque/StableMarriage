testing
woman: woman prefer: man over: otherMan
	| i1 i2 |
	i1 := woman preferences indexOf: man.
	i1 = 0 ifTrue: [ i1 := Float infinity ].
	i2 := woman preferences indexOf: otherMan.
	i2 = 0 ifTrue: [ i2 := Float infinity ].
	^ i1 < i2
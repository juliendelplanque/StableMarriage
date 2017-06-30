comparing
= anObject
	^ self class = anObject class
			and: [ self man = anObject man
						and: [ self woman = anObject woman ] ]
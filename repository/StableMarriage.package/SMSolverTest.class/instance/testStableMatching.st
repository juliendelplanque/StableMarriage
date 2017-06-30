tests-computation
testStableMatching
	solver stableMatching.
	
	{ { m1 . w3 } . { m2 . w2 } . { m3 . w1 } } do: [ :arr |
		self
			assert: (solver marriages anySatisfy: [ :any | any man = arr first and: [ any woman = arr second ] ]) ]
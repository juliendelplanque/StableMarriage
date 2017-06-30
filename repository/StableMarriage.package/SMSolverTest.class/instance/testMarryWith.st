tests-computation
testMarryWith
	| marriage |
	marriage := SMMariage new man: m1; woman: w1; yourself.
	solver marry: m1 with: w1.
	self assert: (solver marriages includes: marriage).
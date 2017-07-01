tests-computation
testDivorce
	| marriage |
	marriage := SMMarriage new man: m1; woman: w1; yourself.
	solver marry: m1 with: w1.
	self assert: (solver marriages includes: marriage).
	
	solver divorce: marriage.
	self deny: (solver marriages includes: marriage)
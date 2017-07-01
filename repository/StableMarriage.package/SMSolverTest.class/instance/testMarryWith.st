tests-computation
testMarryWith
	| marriage |
	marriage := SMMarriage new man: m1; woman: w1; yourself.
	self
		assert: m1 isFree;
		assert: w1 isFree.
	solver marry: m1 with: w1.
	self
		assert: (solver marriages includes: marriage);
		assert: m1 marriage equals: marriage;
		assert: w1 marriage equals: marriage;
		deny: m1 isFree;
		deny: w1 isFree
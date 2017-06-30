running
setUp
	m1 := SMContender new
				data: 'm1';
				yourself.
	m2 := SMContender new
				data: 'm2';
				yourself.
	m3 := SMContender new
				data: 'm3';
				yourself.

	w1 := SMContender new
				data: 'w1';
				yourself.
	w2 := SMContender new
				data: 'w2';
				yourself.
	w3 := SMContender new
				data: 'w3';
				yourself.

	m1 preferences: { w3 . w2 . w1 }.
	m2 preferences: { w2 . w3 . w1 }.
	m3 preferences: { w1 . w2 . w3 }.

	w1 preferences: { m1 . m2 . m3 }.
	w2 preferences: { m2 . m3 . m1 }.
	w3 preferences: { m1 . m2 . m3 }.

	solver := SMSolver new
		men: { m1 . m2 . m3 };
		women: { w1 . w2 . w3 };
		yourself
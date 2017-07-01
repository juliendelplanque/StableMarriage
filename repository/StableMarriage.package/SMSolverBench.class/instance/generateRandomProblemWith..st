generation
generateRandomProblemWith: numberOfContender
	| men women |
	men := (1 to: numberOfContender) collect: [ :i | SMContender new ].
	women := (1 to: numberOfContender) collect: [ :i | SMContender new ].
	
	men do: [ :man | man preferences: women copy shuffle ].
	women do: [ :woman | woman preferences: men copy shuffle ].
	
	^ SMSolver new
		men: men;
		women: women;
		yourself
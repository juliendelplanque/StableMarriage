benchmarking
benchmark: nTimes upToPower: power
	| result |
	result := OrderedCollection new.
	(1 to: power) do: [ :i | |size times|
		size := 10**i.
		times := OrderedCollection new.
		(1 to: nTimes) do: [ :j | |solver|
			solver := (self generateRandomProblemWith: size). 
			times add: [ solver stableMatching ] timeToRun ] displayingProgress: 'Iterations'.
		result add: { size }, times ] displayingProgress: 'Size loop'.
	^ result
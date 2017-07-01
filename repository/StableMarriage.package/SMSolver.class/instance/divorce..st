computation
divorce: marriage
	marriage man
		marriage: nil.
	marriage man stillHasPreference
		ifTrue: [ freeMenWithPreferenceFIFO addLast: marriage man ].
	marriage woman
		marriage: nil.
	self marriages
		remove: marriage
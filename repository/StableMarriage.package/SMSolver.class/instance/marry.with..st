computation
marry: man with: woman
	man isFree: false.
	woman isFree: false.
	self marriages
		add: (SMMariage new
					man: man;
					woman: woman;
					yourself)
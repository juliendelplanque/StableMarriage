computation
marry: man with: woman
	| marriage |
	marriage := SMMariage new
						man: man;
						woman: woman;
						yourself.
	man marriage: marriage.
	woman marriage: marriage.
	self marriages
		add: marriage
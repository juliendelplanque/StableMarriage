computation
marry: man with: woman
	| marriage |
	marriage := SMMarriage new
						man: man;
						woman: woman;
						yourself.
	man marriage: marriage.
	woman marriage: marriage.
	self marriages
		add: marriage
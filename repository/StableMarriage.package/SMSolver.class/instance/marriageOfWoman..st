accessing
marriageOfWoman: woman
	^ self marriages detect: [ :mariage | mariage woman = woman ]
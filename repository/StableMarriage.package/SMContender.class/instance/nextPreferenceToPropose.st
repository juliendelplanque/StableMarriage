accessing
nextPreferenceToPropose
	^ self preferences at: (lastProposedIndex := lastProposedIndex + 1)
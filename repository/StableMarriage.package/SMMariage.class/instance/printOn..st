printing
printOn: aStream
	super printOn: aStream.
	
	aStream << $(.
	self man printOn: aStream.
	aStream << $,.
	self woman printOn: aStream.
	aStream <<$)
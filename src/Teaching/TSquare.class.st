Class {
	#name : 'TSquare',
	#superclass : 'TRectangle',
	#category : 'Teaching-Shapes',
	#package : 'Teaching',
	#tag : 'Shapes'
}

{ #category : 'instance creation' }
TSquare class >> height: a width: b [

	^ self error: 'Should use new: a'
]

{ #category : 'instance creation' }
TSquare class >> new: size [

	^ self basicNew
		width: size;
		height: size
]

{ #category : 'initialization' }
TSquare >> initialize [

	self
		width: 5;
		height: 5
]

{ #category : 'printing' }
TSquare >> printOn: aStream [

	aStream
		nextPutAll: 'Square[';
		print: width;
		nextPut: $]
]

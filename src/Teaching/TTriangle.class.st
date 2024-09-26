Class {
	#name : 'TTriangle',
	#superclass : 'TFlatShape',
	#instVars : [
		'a',
		'b',
		'gamma'
	],
	#category : 'Teaching',
	#package : 'Teaching'
}

{ #category : 'accessing' }
TTriangle >> a [

	^ a
]

{ #category : 'accessing' }
TTriangle >> a: anObject [

	a := anObject
]

{ #category : 'accessing' }
TTriangle >> b [

	^ b
]

{ #category : 'accessing' }
TTriangle >> b: anObject [

	b := anObject
]

{ #category : 'accessing' }
TTriangle >> gamma [

	^ gamma
]

{ #category : 'accessing' }
TTriangle >> gamma: anObject [

	gamma := anObject
]

{ #category : 'initialization' }
TTriangle >> initialize [

	a := 3.
	b := 4.
	gamma := 90
]

{ #category : 'printing' }
TTriangle >> printOn: aStream [

	aStream
		nextPutAll: 'Triangle<';
		print: a;
		nextPut: $,;
		print: b;
		nextPut: $,;
		print: gamma;
		nextPut: $>
]

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

{ #category : 'as yet unclassified' }
TTriangle class >> a: aNumber b: bNumber gamma: gNumber [

	^ self basicNew
		  a: aNumber;
		  b: bNumber;
		  gamma: gNumber
]

{ #category : 'accessing' }
TTriangle >> a [

	^ a
]

{ #category : 'accessing' }
TTriangle >> a: anObject [

	a := anObject
]

{ #category : 'calculation' }
TTriangle >> area [

	^ 0.5 * a * b * gamma degreesToRadians sin
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
TTriangle >> c [

	^ (a squared + b squared - (2 * a * b * gamma degreesToRadians cos)) sqrt
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

{ #category : 'calculation' }
TTriangle >> perim [

	^ a + b + self c
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

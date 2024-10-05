Class {
	#name : 'TCircle',
	#superclass : 'TFlatShape',
	#instVars : [
		'radius'
	],
	#category : 'Teaching-Shapes',
	#package : 'Teaching',
	#tag : 'Shapes'
}

{ #category : 'instance creation' }
TCircle class >> new: aNumber [

	^ self basicNew radius: aNumber
]

{ #category : 'calculation' }
TCircle >> area [

	^ Float pi * radius squared
]

{ #category : 'initialization' }
TCircle >> initialize [

	self radius: 1
]

{ #category : 'calculation' }
TCircle >> perim [

	^ 2.0 * radius * Float pi
]

{ #category : 'printing' }
TCircle >> printOn: aStream [

	aStream
		nextPutAll: 'Circle(';
		print: radius;
		nextPut: $)
]

{ #category : 'accessing' }
TCircle >> radius [
	^ radius
]

{ #category : 'accessing' }
TCircle >> radius: anInteger [ 
	radius := anInteger
]

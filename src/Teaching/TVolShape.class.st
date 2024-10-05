"
Базовий абстрактний клас ієрархії об'ємних фігур.
- volume
- baseArea
- sideArea
- totalArea
"
Class {
	#name : 'TVolShape',
	#superclass : 'Object',
	#instVars : [
		'base',
		'height'
	],
	#category : 'Teaching-Shapes',
	#package : 'Teaching',
	#tag : 'Shapes'
}

{ #category : 'accessing' }
TVolShape >> base [

	^ base
]

{ #category : 'accessing' }
TVolShape >> base: aFlatShape [

	(aFlatShape isKindOf: TFlatShape) ifFalse: [
		^ self error: 'The base should be a TFlatShape' ].
	base := aFlatShape
]

{ #category : 'calculation' }
TVolShape >> baseArea [

	^ base area
]

{ #category : 'accessing' }
TVolShape >> height [

	^ height
]

{ #category : 'accessing' }
TVolShape >> height: aNumber [

	height := aNumber 
]

{ #category : 'initialization' }
TVolShape >> initialize [

	^ self subclassResponsibility
]

{ #category : 'printing' }
TVolShape >> printOn: aStream [

	aStream
		nextPutAll: self className;
		nextPut: ${;
		nextPutAll: 'base: ';
		print: self base;
		nextPutAll: ', height: ';
		print: self height;
		nextPut: $}
]

{ #category : 'calculation' }
TVolShape >> sideArea [

	^ self subclassResponsibility 
]

{ #category : 'calculation' }
TVolShape >> totalArea [

	^ self subclassResponsibility 
]

{ #category : 'calculation' }
TVolShape >> volume [

	^ self subclassResponsibility 
]

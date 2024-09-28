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
	#category : 'Teaching',
	#package : 'Teaching'
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

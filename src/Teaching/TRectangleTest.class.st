Class {
	#name : 'TRectangleTest',
	#superclass : 'TestCase',
	#category : 'Teaching',
	#package : 'Teaching'
}

{ #category : 'tests' }
TRectangleTest >> testArea [

	| default rectAB |
	default := TRectangle new.
	rectAB := TRectangle height: 6 width: 9.
	self assert: default area equals: 50.
	self assert: rectAB area equals: 54
]

{ #category : 'tests' }
TRectangleTest >> testCreation [

	| default rectAB |
	default := TRectangle new.
	rectAB := TRectangle height: 6 width: 9.
	self assert: default height equals: 5.
	self assert: default width equals: 10.
	self assert: rectAB height equals: 6.
	self assert: rectAB width equals: 9
]

{ #category : 'tests' }
TRectangleTest >> testPerim [

	| default rectAB |
	default := TRectangle new.
	rectAB := TRectangle height: 6 width: 9.
	self assert: default perim equals: 30.
	self assert: rectAB perim equals: 30
]

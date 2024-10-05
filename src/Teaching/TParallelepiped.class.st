Class {
	#name : 'TParallelepiped',
	#superclass : 'TDirectShape',
	#category : 'Teaching-Shapes',
	#package : 'Teaching',
	#tag : 'Shapes'
}

{ #category : 'initialization' }
TParallelepiped >> initialize [

	base := TRectangle new.
	height := 1.0
]

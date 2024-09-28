Class {
	#name : 'TParallelepiped',
	#superclass : 'TDirectShape',
	#category : 'Teaching',
	#package : 'Teaching'
}

{ #category : 'initialization' }
TParallelepiped >> initialize [

	base := TRectangle new.
	height := 1.0
]

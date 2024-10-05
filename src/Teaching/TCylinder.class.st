Class {
	#name : 'TCylinder',
	#superclass : 'TDirectShape',
	#category : 'Teaching-Shapes',
	#package : 'Teaching',
	#tag : 'Shapes'
}

{ #category : 'initialization' }
TCylinder >> initialize [

	base := TCircle new.
	height := 1.0
]

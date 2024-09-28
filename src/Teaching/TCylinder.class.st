Class {
	#name : 'TCylinder',
	#superclass : 'TDirectShape',
	#category : 'Teaching',
	#package : 'Teaching'
}

{ #category : 'initialization' }
TCylinder >> initialize [

	base := TCircle new.
	height := 1.0
]

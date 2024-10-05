Class {
	#name : 'TPrizm',
	#superclass : 'TDirectShape',
	#category : 'Teaching-Shapes',
	#package : 'Teaching',
	#tag : 'Shapes'
}

{ #category : 'initialization' }
TPrizm >> initialize [

	base := TTriangle new.
	height := 1.0
]

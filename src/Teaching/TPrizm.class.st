Class {
	#name : 'TPrizm',
	#superclass : 'TDirectShape',
	#category : 'Teaching',
	#package : 'Teaching'
}

{ #category : 'initialization' }
TPrizm >> initialize [

	base := TTriangle new.
	height := 1.0
]

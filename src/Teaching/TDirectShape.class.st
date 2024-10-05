Class {
	#name : 'TDirectShape',
	#superclass : 'TVolShape',
	#category : 'Teaching-Shapes',
	#package : 'Teaching',
	#tag : 'Shapes'
}

{ #category : 'calculation' }
TDirectShape >> sideArea [

	^ self base perim * self height 
]

{ #category : 'calculation' }
TDirectShape >> totalArea [

	^ 2 * self baseArea + self sideArea 
]

{ #category : 'calculation' }
TDirectShape >> volume [

	^ self baseArea * self height 
]

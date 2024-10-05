"
Моделює плоску геометричну фігуру.
Вміє обчислювати свої периметр і площу
"
Class {
	#name : 'TRectangle',
	#superclass : 'TFlatShape',
	#instVars : [
		'width',
		'height'
	],
	#category : 'Teaching-Shapes',
	#package : 'Teaching',
	#tag : 'Shapes'
}

{ #category : 'instance creation' }
TRectangle class >> height: a width: b [

	"| inst |
	inst := self basicNew.
	inst width: b.
	inst height: a.
	^ inst"
	^ self basicNew width: b; height: a
]

{ #category : 'calculation' }
TRectangle >> area [
	^ self height * self width 
]

{ #category : 'accessing' }
TRectangle >> height [

	^ height
]

{ #category : 'accessing' }
TRectangle >> height: aNumber [

	height := aNumber >= 0.1 ifTrue: aNumber ifFalse: 0.1
]

{ #category : 'initialization' }
TRectangle >> initialize [

	"width := 10.
	height := 5"
	self width: 10; height: 5.
]

{ #category : 'calculation' }
TRectangle >> perim [
	^ (self height + self width) * 2
]

{ #category : 'printing' }
TRectangle >> printOn: aStream [

	aStream nextPutAll: 'Rect['.
	width printOn: aStream.
	aStream nextPut: $x.
	height printOn: aStream.
	aStream nextPut: $]
]

{ #category : 'accessing' }
TRectangle >> width [

	^ width
]

{ #category : 'accessing' }
TRectangle >> width: aNumber [

	width := aNumber >= 0.1 ifTrue: aNumber ifFalse: 0.1
]

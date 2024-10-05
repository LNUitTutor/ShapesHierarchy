Class {
	#name : 'TFlatShape',
	#superclass : 'Object',
	#category : 'Teaching-Shapes',
	#package : 'Teaching',
	#tag : 'Shapes'
}

{ #category : 'calculation' }
TFlatShape >> area [
	"Кожна плоска фігура вміє повідомляти свою площу"

	^ self subclassResponsibility
]

{ #category : 'calculation' }
TFlatShape >> perim [
	"Кожна плоска фігура повідомляє свій периметр"

	^ self subclassResponsibility
]

{ #category : 'printing' }
TFlatShape >> printOn: aStream [

	aStream nextPutAll: 'Плоска фігура - абстрактне поняття'
]

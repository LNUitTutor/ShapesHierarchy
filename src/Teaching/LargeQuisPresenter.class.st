Class {
	#name : 'LargeQuisPresenter',
	#superclass : 'SpPresenter',
	#instVars : [
		'first',
		'second',
		'third',
		'buttonDone'
	],
	#category : 'Teaching-Spec',
	#package : 'Teaching',
	#tag : 'Spec'
}

{ #category : 'initialization' }
LargeQuisPresenter >> connectPresenters [

	buttonDone action: [
		UIManager default inform: 'Survey done: ' , {
				first getAnswer.
				second getAnswer.
				third getAnswer } printString.
		self delete ]
]

{ #category : 'layout' }
LargeQuisPresenter >> defaultLayout [

	^ SpBoxLayout new beVertical
		  add: #first;
		  add: #second;
		  add: #third;
		  add: buttonDone;
		yourself 
]

{ #category : 'initialization' }
LargeQuisPresenter >> initializePresenters [

	first := self instantiate: QuisPresenter.
	second := self instantiate: QuisPresenter.
	third := self instantiate: QuisPresenter.
	buttonDone := self newButton.
	buttonDone
		label: 'Done';
		icon: (self iconNamed: #image)
]

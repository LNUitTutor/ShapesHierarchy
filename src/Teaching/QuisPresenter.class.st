Class {
	#name : 'QuisPresenter',
	#superclass : 'SpPresenter',
	#instVars : [
		'buttonHappy',
		'buttonNeutral',
		'buttonBad',
		'labelCoice'
	],
	#category : 'Teaching-Spec',
	#package : 'Teaching',
	#tag : 'Spec'
}

{ #category : 'initialization' }
QuisPresenter >> connectPresenters [

	buttonHappy action: [ labelCoice label: 'Happy' ].
	buttonNeutral action: [ labelCoice label: 'Neutral' ].
	buttonBad action: [ labelCoice label: 'Bad' ]
]

{ #category : 'layout' }
QuisPresenter >> defaultLayout [

	^ SpBoxLayout new
		  beVertical;
		  add: (SpBoxLayout new beHorizontal
				   add: #buttonHappy;
				   add: #buttonNeutral;
				   add: #buttonBad;
				   yourself);
		  add: #labelCoice;
		  yourself
]

{ #category : 'as yet unclassified' }
QuisPresenter >> getAnswer [

	^ labelCoice label
]

{ #category : 'initialization' }
QuisPresenter >> initializePresenters [

	buttonHappy := self newButton.
	buttonHappy
		label: 'Happy';
		icon: (self iconNamed: #thumbsUp).

	buttonNeutral := self newButton.
	buttonNeutral 
		label: 'Neutral';
		icon: (self iconNamed: #user).

	buttonBad := self newButton.
	buttonBad 
		label: 'Bad';
		icon: (self iconNamed: #thumbsDown).

	labelCoice := self newLabel.
	labelCoice label: 'Give us your answer'
]

{ #category : 'initialization' }
QuisPresenter >> initializeWindow: aWindowPresenter [

	aWindowPresenter
		title: 'Customer Satisfaction Survey';
		initialExtent: 400 @ 100
]

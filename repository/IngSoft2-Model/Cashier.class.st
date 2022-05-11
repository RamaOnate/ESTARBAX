Class {
	#name : #Cashier,
	#superclass : #Object,
	#instVars : [
		'order',
		'ticketHanded'
	],
	#category : #'IngSoft2-Model'
}

{ #category : #'as yet unclassified' }
Cashier >> receivesOrderOf: aCoffee [ 
	| ticketTotal ticketDescription |
	order := aCoffee.
	
	ticketTotal := aCoffee cost.
	ticketDescription :=  aCoffee itemsDescription.
	
	ticketHanded := Ticket with: ticketTotal and: ticketDescription.
]

{ #category : #'as yet unclassified' }
Cashier >> ticketHanded [
	^ticketHanded.
]

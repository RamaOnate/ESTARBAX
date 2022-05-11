Class {
	#name : #Ticket,
	#superclass : #Object,
	#instVars : [
		'price',
		'description'
	],
	#category : #'IngSoft2-Model'
}

{ #category : #'as yet unclassified' }
Ticket class >> with: aPrice and: aDescription [
	^self new initializeWith: aPrice and: aDescription
]

{ #category : #accessing }
Ticket >> description [
	^ description
]

{ #category : #initialization }
Ticket >> initializeWith: aPrice and: aDescription [
	price := aPrice.
	description := aDescription.
]

{ #category : #accessing }
Ticket >> price [
	^ price
]

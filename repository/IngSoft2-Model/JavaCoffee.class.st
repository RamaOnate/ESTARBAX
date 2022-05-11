Class {
	#name : #JavaCoffee,
	#superclass : #Object,
	#instVars : [
		'ingredients'
	],
	#category : #'IngSoft2-Model'
}

{ #category : #'as yet unclassified' }
JavaCoffee class >> withoutAdditionals [
	^self new initializeWithoutAdditionals.
]

{ #category : #'as yet unclassified' }
JavaCoffee >> cost [

	^ ingredients cost
]

{ #category : #initialization }
JavaCoffee >> initializeWithoutAdditionals [
	ingredients := Coffee with: { MilkIngredient new }
]

{ #category : #'as yet unclassified' }
JavaCoffee >> itemsDescription [
	^'A Java coffee'
]

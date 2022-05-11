Class {
	#name : #Coffee,
	#superclass : #Object,
	#instVars : [
		'basePrice',
		'coffeeIngredients'
	],
	#category : #'IngSoft2-Model'
}

{ #category : #'as yet unclassified' }
Coffee class >> with: ingredients [

	^ self new initializeWith: ingredients
]

{ #category : #'as yet unclassified' }
Coffee >> cost [

	^ basePrice + self sumOfPriceOfIngredients
]

{ #category : #initialization }
Coffee >> initializeWith: ingredients [

	basePrice := 5.
	coffeeIngredients := ingredients
]

{ #category : #'as yet unclassified' }
Coffee >> itemsDescription [

	| ingredientsDescription |
	ingredientsDescription := 'A coffee'.
	coffeeIngredients do: [ :ingredient | 
		ingredientsDescription := ingredientsDescription
		                          , ingredient description ].

	^ ingredientsDescription
]

{ #category : #'as yet unclassified' }
Coffee >> sumOfPriceOfIngredients [
	^coffeeIngredients sum: [ :ingredient | ingredient cost]
]

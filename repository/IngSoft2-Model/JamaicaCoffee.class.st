Class {
	#name : #JamaicaCoffee,
	#superclass : #Object,
	#instVars : [
		'ingredients'
	],
	#category : #'IngSoft2-Model'
}

{ #category : #'as yet unclassified' }
JamaicaCoffee class >> withoutAdditionals [

	^ self new intitializeWithoutAdditionals
]

{ #category : #'as yet unclassified' }
JamaicaCoffee >> cost [
	^ ingredients cost
]

{ #category : #'as yet unclassified' }
JamaicaCoffee >> intitializeWithoutAdditionals [
	ingredients := Coffee with: { CinnamonIngredient new. VanillaIngredient new. }
]

{ #category : #'as yet unclassified' }
JamaicaCoffee >> itemsDescription [
	^'A Jamaica Coffee'
]

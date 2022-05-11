Class {
	#name : #CoffeeRequestingTests,
	#superclass : #TestCase,
	#category : #'IngSoft2-Tests'
}

{ #category : #tests }
CoffeeRequestingTests >> testACustomerCanRequestACoffeeWithCreamAndSweetOfMilk [

	| anOrder aCashier |
	aCashier := Cashier new.
	anOrder := Coffee with: { CreamIngredient new. SweetOfMilkIngredient new}.

	aCashier receivesOrderOf: anOrder.

	self assert: aCashier ticketHanded description equals: 'A coffee with cream with sweet of milk'.
	self assert: aCashier ticketHanded price equals: 8.
]

{ #category : #tests }
CoffeeRequestingTests >> testACustomerCanRequestASimpleCoffeeWithCreamWithCream [

	| anOrder aCashier |
	aCashier := Cashier new.
	anOrder := Coffee with: { CreamIngredient new. CreamIngredient new}.

	aCashier receivesOrderOf: anOrder.

	self assert: aCashier ticketHanded description equals: 'A coffee with cream with cream'
]

{ #category : #tests }
CoffeeRequestingTests >> testACustomerCanRequestASimpleCoffeeWithoutAdditionalIngredients [

	| anOrder aCashier |
	aCashier := Cashier new.
	anOrder := Coffee with: {}.

	aCashier receivesOrderOf: anOrder.

	self assert: aCashier ticketHanded description equals: 'A coffee'
]

{ #category : #tests }
CoffeeRequestingTests >> testACustomerRequestsAJamaicaCoffeeAndTheTicketShowsJamaicaCoffeeWithPriceOf15 [

	| anOrder aCashier |
	aCashier := Cashier new.
	anOrder := JamaicaCoffee withoutAdditionals.

	aCashier receivesOrderOf: anOrder.

	self assert: aCashier ticketHanded description equals: 'A Jamaica Coffee'.
	self assert: aCashier ticketHanded price equals: 15.
]

{ #category : #tests }
CoffeeRequestingTests >> testACustomerRequestsAJavaCoffeeAndTheTicketShowsAJavaCoffee [

	| anOrder aCashier |
	aCashier := Cashier new.
	anOrder := JavaCoffee withoutAdditionals.

	aCashier receivesOrderOf: anOrder.

	self assert: aCashier ticketHanded description equals: 'A Java coffee'.
	self assert: aCashier ticketHanded price equals: 6.
]

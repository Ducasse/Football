"
A SeasonTest is a test class for testing the behavior of Season
"
Class {
	#name : #SeasonTest,
	#superclass : #TestCase,
	#category : #'Futbol-Tests-Core'
}

{ #category : #tests }
SeasonTest >> testTeamsEvolution [
	| league |
	league := ESL databaseDo: [
		league := League storedInstances asOrderedCollection first.
		 ].
	self assert: league seasons first inspectorTeamEvolutionLinePlot isPresenter
]

{ #category : #tests }
SeasonTest >> testTeamsTablePoint [
	| league table window |
	league := ESL databaseDo: [
		league := League storedInstances asOrderedCollection first.
		 ].
	table := league seasons first inspectorTablePoints.
	self assert: table isPresenter.
	window := table open.
	window delete.
]

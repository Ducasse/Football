Extension { #name : #Player }

{ #category : #'*Futbol-Roassal' }
Player >> inspectorStats [
	<inspectorPresentationOrder: 90 title: 'Stats'>
	^ AnimatedRadarStatsVisualization new
		model: self;
		axisNames: PlayerAttributes axisNames;
		asPresenter
]

{ #category : #'*Futbol-Roassal' }
Player >> inspectorStatsContext: context [
	context withoutEvaluator
]

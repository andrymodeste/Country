"
traitement d'un path d'un country
"
Class {
	#name : 'MyCountry',
	#superclass : 'Object',
	#instVars : [
		'svgPath',
		'name',
		'code'
	],
	#category : 'MyCountry',
	#package : 'MyCountry'
}

{ #category : 'converting' }
MyCountry >> asRSShape [
 ^ RSSVGPath new svgPath: svgPath
]

{ #category : 'instance creation' }
MyCountry >> fromXML: aXMLElement [.
	svgPath := aXMLElement attributeAt: 'd'.
 	name := aXMLElement attributeAt: 'title'.
 	code := aXMLElement attributeAt: 'id'.
]

{ #category : 'as yet unclassified' }
MyCountry >> inspectorShape [
 <inspectorPresentationOrder: 0 title: 'Shape'>
 | canvas |
 canvas := RSCanvas new.
 canvas add: self asRSShape.
 canvas @ RSCanvasController.
 ^ SpRoassalInspectorPresenter new canvas: canvas; yourself
]

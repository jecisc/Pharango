tests
testConnect
	| connector |
	connector := AranDatabasesManager
		host: 'http://127.0.0.1:8529' user: 'test' password: 'test'.
	self assert: connector user jwt isString equals: true.
	
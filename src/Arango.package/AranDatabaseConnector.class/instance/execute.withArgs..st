query
execute: queryString withArgs: aDictionnary
	self znClient
		headerAt: #Authorization put: self user jwt;
		path: self baseUrl , '/_api/cursor';
		entity:
			(self
				znEntityFrom:
					{(#query -> queryString).
					(#bindVars -> aDictionnary)} asDictionary);
		post.
	^ self handleResponse: self znClient
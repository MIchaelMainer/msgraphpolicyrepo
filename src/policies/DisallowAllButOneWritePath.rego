package DisallowAllButOneWritePath

import future.keywords.if

default allow := false

allow 
{
	input.resource.httpRequest.method == "GET"
}

allow
{
	input.resource.httpRequest.method == "POST"
    input.resource.httpRequest.path == "/v1.0/users"
}
package DisallowAllButTwoWritePaths

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

allow
{
	input.resource.httpRequest.method == "DELETE"
	regex.match("/v1.0/users/[^/]+$", input.resource.httpRequest.path)
}
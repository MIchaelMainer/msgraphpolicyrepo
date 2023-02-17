package DisallowAllButTwoWritePaths

import future.keywords.if

default allow := false

allow 
{
	input.resource.method == "GET"
}

allow
{
	input.resource.method == "POST"
    input.resource.path == "/v1.0/users"
}

allow
{
	input.resource.method == "DELETE"
	regex.match("/v1.0/users/[^/]+$", input.resource.path)
}
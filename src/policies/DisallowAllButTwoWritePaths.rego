package DisallowAllButTwoWritePaths

import future.keywords.if

default allow := false

allow 
{
	input.method == "GET"
}

allow
{
	input.method == "POST"
    input.path == "/v1.0/users"
}

allow
{
	input.method == "DELETE"
	regex.match("/v1.0/users/[^/]+$", input.path)
}
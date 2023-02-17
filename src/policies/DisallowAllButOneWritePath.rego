package DisallowAllButOneWritePath

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
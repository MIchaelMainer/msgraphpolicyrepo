package DisallowAllButOneWritePath

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
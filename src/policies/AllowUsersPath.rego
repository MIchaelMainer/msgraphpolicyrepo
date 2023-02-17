package AllowUsersPath

import future.keywords.if

default allow := false

allow 
{
	startswith(input.resource.path, "/v1.0/users")
}

allow
{
    startswith(input.resource.path, "/beta/users")
}

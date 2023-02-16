package AllowUsersPath

import future.keywords.if

default allow := false

allow 
{
	startswith(input.path, "/v1.0/users")
}

allow
{
    startswith(input.path, "/beta/users")
}

package AllowUsersPath

import future.keywords.if

default allow := false

allow 
{
    startswith(input.resource.httpRequest.path, "/v1.0/users")
}
allow
{
    startswith(input.resource.httpRequest.path, "/beta/users")
}

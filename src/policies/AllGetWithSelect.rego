package AllGetWithSelect

import future.keywords.if

default allow := false

allow 
{
    input.method == "GET"
    input.query["select"] != null
}

allow
{
    input.method != "GET"
}

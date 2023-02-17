package AllGetWithSelect

import future.keywords.if

default allow := false

allow 
{
    input.resource.method == "GET"
    input.resource.queryParameters["select"] != null
    input.resource.queryParameters["select"] != ""
}

allow 
{
    input.resource.method == "GET"
    input.resource.queryParameters["$select"] != null
    input.resource.queryParameters["$select"] != ""
}

allow
{
    input.resource.method != "GET"
}

package AllGetWithSelect

import future.keywords.if

default allow := false

allow 
{
    input.resource.method == "GET"
    input.resource.query["select"] != null
    input.resource.query["select"] != ""
}

allow 
{
    input.resource.method == "GET"
    input.resource.query["$select"] != null
    input.resource.query["$select"] != ""
}

allow
{
    input.resource.method != "GET"
}

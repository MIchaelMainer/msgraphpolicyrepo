package DisallowGETsWithoutSelect

import future.keywords.if

default allow := false

allow 
{
    input.resource.httpRequest.method == "GET"
    input.resource.httpRequest.queryParameters["select"] != null
    input.resource.httpRequest.queryParameters["select"] != ""
}

allow 
{
    input.resource.httpRequest.method == "GET"
    input.resource.httpRequest.queryParameters["$select"] != null
    input.resource.httpRequest.queryParameters["$select"] != ""
}

allow
{
    input.resource.httpRequest.method != "GET"
    input.resource.httpRequest.method != "POST"
}

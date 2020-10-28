# https://gist.github.com/silgon/0ba43e00e0749cdf4f8d244e67cd9d6a
# https://riptutorial.com/julia-lang/example/19443/parsing-json
# https://github.com/JuliaIO/JSON.jl 

import Pkg; 
Pkg.add("HTTP")
Pkg.add("JSON")
Pkg.add("JSON")
Pkg.add("JSON3")
Pkg.add("LazyJSON")


import HTTP
import JSON
import JSON;
import JSON3;
import LazyJSON;

using JSON
using HTTP
using JSON;
using JSON3;
using LazyJSON;

url = "https://raw.githubusercontent.com/xamarin/AndroidX/20200915-mono.cecil-fix/config.json"
response = HTTP.get(url)

response_body_as_string = response_body_as_stringing(response.body)
println("response_body_as_string = ", response_body_as_string)

json_object_JSON = JSON.parse(response_body_as_string)
println("json_object_JSON = ", json_object_JSON)

json_object_JSON3 = JSON3.read(response_body_as_string)
println("json_object_JSON3 = ", json_object_JSON)


json_object_LazyJSON = LazyJSON.value(response_body_as_string)
println("json_object_LazyJSON = ", json_object_LazyJSON)
